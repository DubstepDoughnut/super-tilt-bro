#!/usr/bin/env python
from stblib import ensure
import argparse
import expand_tpl
import json
import math
import os
import re
import stblib.asmformat.tiles
import stblib.asmformat.animations
import stblib.jsonformat
import stblib.utils
import sys
import textwrap

FIRST_AVAILABLE_BANK = None

def text_asm(text, size, space_tile):
	"""
	Convert a string to a fixed-size sequence of tile indexes in assembly
	"""
	assert len(text) <= size

	padded_text = text.center(size)
	tiled_text = stblib.utils.str_to_tile_index(padded_text, special_cases = {' ':space_tile})
	assert len(tiled_text) == size

	res = ''
	for i in range(len(tiled_text)):
		char_index = tiled_text[i]
		res += stblib.utils.uintasm8(char_index)
		if i != size - 1:
			res += ', '

	return res

def compute_anim_duration_raw(anim):
	total_dur = 0
	for frame in anim.frames:
		total_dur += frame.duration
	return total_dur

def compute_anim_duration_pal(anim):
	return compute_anim_duration_raw(anim)

def compute_anim_duration_ntsc(anim):
	# In NTSC the animation engine double one out of five frames
	raw_dur = compute_anim_duration_raw(anim)
	return raw_dur + int(raw_dur / 5)

def expand_macros(source, game_dir, char, templates_dir):
	return expand_tpl.expand(source, game_dir, '{}/states.asm'.format(char.name), templates_dir)

def find_first_available_bank(game_dir):
	global FIRST_AVAILABLE_BANK
	bank_index_template_path = '{}/game/banks.asm'.format(game_dir)
	with open(bank_index_template_path, 'r') as bank_template_file:
		re_bank_number = re.compile('^#define CURRENT_BANK_NUMBER FIRST_GAME_BANK\+(?P<num>[$%0-9a-fA-F]+)$')
		current_bank_number = None
		for line_num, line in enumerate(bank_template_file):
			if line.startswith(';; mod banks'):
				ensure(current_bank_number is not None, f'{bank_index_template_path}:{line_num}: Mod banks place before CURRENT_BANK_NUMBER has been found')
				FIRST_AVAILABLE_BANK = current_bank_number + 1
				return
			else:
				m = re_bank_number.match(line.strip())
				if m is not None:
					current_bank_number = stblib.utils.asmint(m.group('num'))
	ensure(False, f'{bank_index_template_path}: No ";; mod banks" line found')

def generate_character(char, game_dir, templates_dir):
	name_upper = char.name.upper()

	# Create destination directories
	rel_char_dir = 'game/data/characters/characters-data/{}'.format(char.name)
	rel_anim_dir = '{}/animations'.format(rel_char_dir)
	char_dir = '{}/{}'.format(game_dir, rel_char_dir)
	anim_dir = '{}/{}'.format(game_dir, rel_anim_dir)
	os.makedirs(char_dir)
	os.makedirs(anim_dir)

	# Label names that are used in multiple places
	tileset_label_name = '{}_chr_tiles'.format(char.name)
	illustrations_label_name = '{}_chr_illustrations'.format(char.name)
	primary_palettes_label_name = '{}_character_palettes'.format(char.name)
	alternate_palettes_label_name = '{}_character_alternate_palettes'.format(char.name)
	weapon_palettes_label_name = '{}_weapon_palettes'.format(char.name)
	properties_table_label_name = '{}_properties'.format(char.name)
	ai_attacks_table_label_name = '{}_ai_attacks'.format(char.name)
	ai_selectors_table_label_name = '{}_ai_selectors'.format(char.name)

	# Create character's master file
	master_file_path = '{}/{}.asm'.format(char_dir, char.name)
	with open(master_file_path, 'w') as master_file:
		master_file.write(textwrap.dedent("""\
			{name_upper}_BANK_NUMBER = CURRENT_BANK_NUMBER

			#include "{rel_char_dir}/chr_tiles.asm"
			#include "{rel_char_dir}/chr_illustrations.asm"
			#include "{rel_char_dir}/animations/animations.asm"
			#include "{rel_char_dir}/character_colors.asm"
			#include "{rel_char_dir}/properties.asm"
			#include "{rel_char_dir}/state_events.asm"
			#include "{rel_char_dir}/player_states_index.asm"
			#include "{rel_char_dir}/player_states.asm"
			#include "{rel_char_dir}/ai_data.asm"
			#include "{rel_char_dir}/ai.asm"
		""".format_map(locals())))

	# Tileset file
	chr_tiles_file_path = '{}/chr_tiles.asm'.format(char_dir)
	with open(chr_tiles_file_path, 'w') as chr_tiles_file:
		# Tileset label
		chr_tiles_file.write('{}:\n\n'.format(tileset_label_name))

		# Tiles in binary form, each with a label containing its index
		index_expression = '(*-{})/16'.format(tileset_label_name)
		for tile_index in range(len(char.tileset.tilenames)):
			tile = char.tileset.tiles[tile_index]
			tile_name = char.tileset.tilenames[tile_index]

			# Label containing tile's index
			chr_tiles_file.write('{} = {}\n'.format(tile_name, index_expression))

			# Tile data
			chr_tiles_file.write('{}\n\n'.format(stblib.asmformat.tiles.tile_to_asm(tile)))

		# Tileset footer
		chr_tiles_file.write(textwrap.dedent("""\
			{name_upper}_SPRITE_TILES_NUMBER = {index_expression}
			#print {name_upper}_SPRITE_TILES_NUMBER
			#if {name_upper}_SPRITE_TILES_NUMBER > 96
			#error too many sprites for character {name_upper}
			#endif
		""".format_map(locals())))

	# Illustrations file
	chr_illustrations_file_path = '{}/chr_illustrations.asm'.format(char_dir)
	with open(chr_illustrations_file_path, 'w') as chr_illustrations_file:
		# Illustrations label
		chr_illustrations_file.write('{}:\n\n'.format(illustrations_label_name))
		index_expression = '(*-{})/16'.format(illustrations_label_name)

		# Token illustration
		chr_illustrations_file.write(';\n; Token\n;\n\n')
		ensure(len(char.illustration_token.tilenames) == 1)
		ensure(len(char.illustration_token.tiles) == len(char.illustration_token.tilenames))
		chr_illustrations_file.write('{}\n\n'.format(stblib.asmformat.tiles.tile_to_asm(char.illustration_token.tiles[0])))

		# Small illustration
		chr_illustrations_file.write(';\n; Small\n;\n\n')
		ensure(len(char.illustration_small.tilenames) == 4)
		ensure(len(char.illustration_small.tiles) == len(char.illustration_small.tilenames))
		for tile_index in range(len(char.illustration_small.tilenames)):
			tile = char.illustration_small.tiles[tile_index]
			chr_illustrations_file.write('{}\n\n'.format(stblib.asmformat.tiles.tile_to_asm(tile)))

		# Large illustration
		chr_illustrations_file.write(';\n; Large\n;\n\n')
		ensure(len(char.illustration_large.tilenames) == 48)
		ensure(len(char.illustration_large.tiles) == len(char.illustration_large.tilenames))
		for tile_index in range(len(char.illustration_large.tilenames)):
			tile = char.illustration_large.tiles[tile_index]
			chr_illustrations_file.write('{}\n\n'.format(stblib.asmformat.tiles.tile_to_asm(tile)))

		# Illustration footer
		chr_illustrations_file.write(textwrap.dedent("""\
			{name_upper}_ILLUSTRATION_TILES_NUMBER = {index_expression}
			#print {name_upper}_ILLUSTRATION_TILES_NUMBER
			#if {name_upper}_ILLUSTRATION_TILES_NUMBER <> 53
			#error bad count of illustration tiles for character {name_upper}
			#endif
		""".format_map(locals())))

	# Palettes file
	character_colors_file_path = '{}/character_colors.asm'.format(char_dir)
	with open(character_colors_file_path, 'w') as character_colors_file:
		def write_palettes_table(palettes, label_name, description):
			def _c(i):
				return stblib.utils.intasm8(palette.colors[i])
			character_colors_file.write('; {}\n'.format(description))
			character_colors_file.write('{}:\n'.format(label_name))
			for palette in palettes:
				character_colors_file.write('.byt {}, {}, {}\n'.format(_c(0), _c(1), _c(2)))
			character_colors_file.write('\n')

		# Primary palettes
		write_palettes_table(
			char.color_swaps.primary_colors,
			primary_palettes_label_name,
			'Main palette for character'
		)

		# Alternate palettes
		write_palettes_table(
			char.color_swaps.alternate_colors,
			alternate_palettes_label_name,
			'Alternate palette to use to reflect special state'
		)

		# Secondary palettes
		write_palettes_table(
			char.color_swaps.secondary_colors,
			weapon_palettes_label_name,
			'Secondary palette for character'
		)

	# Character properties
	properties_file_path = '{}/properties.asm'.format(char_dir)
	with open(properties_file_path, 'w') as properties_file:
		# Propeties table's label
		properties_file.write('{}:\n'.format(properties_table_label_name))

		# Standard animations
		properties_file.write('VECTOR({})\n'.format(char.victory_animation.name))
		properties_file.write('VECTOR({})\n'.format(char.defeat_animation.name))
		properties_file.write('VECTOR({})\n'.format(char.menu_select_animation.name))

		# Character name
		properties_file.write('.byt {} ; {}\n'.format(text_asm(char.name, 10, 2), char.name))

		# Illustrations
		properties_file.write('VECTOR({}) ; Illustrations begining\n'.format(illustrations_label_name))

		# AI
		properties_file.write('VECTOR({}) ; AI selectors\n'.format(ai_selectors_table_label_name))
		properties_file.write('.byt {} ; Number of AI attacks\n'.format(len(char.ai.attacks)))
		properties_file.write('VECTOR({}) ; AI attacks\n'.format(ai_attacks_table_label_name))

	# State events
	state_events_file_path = '{}/state_events.asm'.format(char_dir)
	with open(state_events_file_path, 'w') as state_events_file:
		# State count
		state_events_file.write('{}_NUM_STATES = {}\n\n'.format(name_upper, len(char.states)))

		# Routines tables
		for routine_type in ['start', 'update', 'offground', 'onground', 'input', 'onhurt']:
			state_events_file.write('{}_state_{}_routines:\n'.format(char.name, routine_type))
			for state in char.states:
				routine_name = getattr(state, '{}_routine'.format(routine_type))
				ensure(routine_name is not None or routine_type == 'start', 'in {}\'s state {}, missing {} routine'.format(char.name, state.name, routine_type))

				if routine_name is not None:
					state_events_file.write('STATE_ROUTINE({}) ; {}\n'.format(routine_name, state.name))
			state_events_file.write('\n')

	# States index
	player_states_index_file_path = '{}/player_states_index.asm'.format(char_dir)
	with open(player_states_index_file_path, 'w') as player_states_index_file:
		player_states_index_file.write(';\n')
		player_states_index_file.write('; States index\n')
		player_states_index_file.write(';\n')
		player_states_index_file.write('\n')
		state_idx = 0
		for state in char.states:
			player_states_index_file.write('{} = {}\n'.format(state.name, state_idx))
			state_idx += 1

	# Character's logic
	expanded_source_code = expand_macros(char.sourcecode, game_dir, char, templates_dir)
	player_states_file_path = '{}/player_states.asm'.format(char_dir)
	with open(player_states_file_path, 'w') as player_states_file:
		player_states_file.write(expanded_source_code)

	# Animations
	rel_animations_path = []
	def write_animation_file(anim):
		rel_anim_file_path = '{}/{}.asm'.format(rel_anim_dir, anim.name)
		anim_file_path = '{}/{}'.format(game_dir, rel_anim_file_path)

		with open(anim_file_path, 'w') as anim_file:
			anim_file.write('{}_dur_pal = {}\n'.format(anim.name, compute_anim_duration_pal(anim)))
			anim_file.write('{}_dur_ntsc = {}\n'.format(anim.name, compute_anim_duration_ntsc(anim)))
			anim_file.write(stblib.asmformat.animations.animation_to_asm(anim))
		rel_animations_path.append(rel_anim_file_path)

	write_animation_file(char.victory_animation)
	write_animation_file(char.defeat_animation)
	write_animation_file(char.menu_select_animation)
	for anim in char.animations:
		write_animation_file(anim)

	master_animations_file_path = '{}/animations.asm'.format(anim_dir)
	with open(master_animations_file_path, 'w') as master_animations_file:
		for rel_anim_file_path in rel_animations_path:
			master_animations_file.write('#include "{}"\n'.format(rel_anim_file_path))

	# AI
	custom_ai_file_path = '{}/ai.asm'.format(char_dir)
	with open(custom_ai_file_path, 'w') as custom_ai_file:
		custom_ai_file.write(char.ai.sourcecode)

	ai_data_file_path = '{}/ai_data.asm'.format(char_dir)
	with open(ai_data_file_path, 'w') as ai_data_file:
		# Attacks
		ai_data_file.write('{}:\n'.format(ai_attacks_table_label_name))
		ai_data_file.write('; LSBs\n')
		for attack in char.ai.attacks:
			ai_data_file.write('AI_ATTACK_HITBOX({}, ${:02x}, ${:02x}, ${:02x}, ${:02x})\n'.format(
				stblib.utils.uint16lsb(attack.constraints),
				stblib.utils.int16lsb(attack.hitbox.left),
				stblib.utils.int16lsb(attack.hitbox.right),
				stblib.utils.int16lsb(attack.hitbox.top),
				stblib.utils.int16lsb(attack.hitbox.bottom)
			))
			ai_data_file.write('.byt <{}\n'.format(attack.action))
		ai_data_file.write('; MSBs\n')
		for attack in char.ai.attacks:
			ai_data_file.write('AI_ATTACK_HITBOX({}, ${:02x}, ${:02x}, ${:02x}, ${:02x})\n'.format(
				stblib.utils.uint16msb(attack.constraints),
				stblib.utils.int16msb(attack.hitbox.left),
				stblib.utils.int16msb(attack.hitbox.right),
				stblib.utils.int16msb(attack.hitbox.top),
				stblib.utils.int16msb(attack.hitbox.bottom)
			))
			ai_data_file.write('.byt >{}\n'.format(attack.action))
		ai_data_file.write('\n')

		# Selectors
		ai_data_file.write('{}:\n'.format(ai_selectors_table_label_name))
		for selector in char.ai.action_selectors:
			ai_data_file.write('VECTOR({})\n'.format(selector))
		ai_data_file.write('\n')

		# Actions
		for action in char.ai.actions:
			ai_data_file.write('{}_ai_action_{}:\n'.format(char.name, action.name))
			for step in action.steps:
				ai_data_file.write('AI_ACTION_STEP({}, {})\n'.format(step.input, step.duration))
			ai_data_file.write('AI_ACTION_END_STEPS\n')

def generate_characters_index(characters, game_dir):
	characters_index_file_path = '{}/game/data/characters/characters-index.asm'.format(game_dir)
	with open(characters_index_file_path, 'w') as characters_index_file:
		def _w(s):
			characters_index_file.write(s)

		def _w_table(desc, name, value):
			if desc is not None and len(desc) > 0:
				_w('; {}\n'.format(desc))
			_w('{}:\n'.format(name))
			for char in characters:
				_w('.byt {} ; {}\n'.format(value(char), char.name.capitalize()))
			_w('\n')

		def _w_split_table(desc, name, value):
			if desc is not None and len(desc) > 0:
				_w('; {}\n'.format(desc))
			_w_table('', '{}_lsb'.format(name), lambda c: '<{}'.format(value(c)))
			_w_table('', '{}_msb'.format(name), lambda c: '>{}'.format(value(c)))

		def _w_routine_table(routine_type):
			_w_split_table(
				'',
				'characters_{}_routines_table'.format(routine_type),
				lambda c: '{}_state_{}_routines'.format(c.name, routine_type)
			)

		_w('; Number of characters referenced in following tables\n')
		_w('CHARACTERS_NUMBER = {}\n\n'.format(len(characters)))

		_w_table(
			'Bank in which each character is stored',
			'characters_bank_number',
			lambda c: '{}_BANK_NUMBER'.format(c.name.upper())
		)
		_w_split_table(
			'Begining of tiles data for each character',
			'characters_tiles_data',
			lambda c: '{}_chr_tiles'.format(c.name)
		)
		_w_table(
			'Number of CHR tiles per character',
			'characters_tiles_number',
			lambda c: '{}_SPRITE_TILES_NUMBER'.format(c.name.upper())
		)
		_w_split_table(
			'Character properties',
			'characters_properties',
			lambda c: '{}_properties'.format(c.name)
		)
		_w_split_table(
			'',
			'characters_palettes',
			lambda c: '{}_character_palettes'.format(c.name)
		)
		_w_split_table(
			'',
			'characters_alternate_palettes',
			lambda c: '{}_character_alternate_palettes'.format(c.name)
		)
		_w_split_table(
			'',
			'characters_weapon_palettes',
			lambda c: '{}_weapon_palettes'.format(c.name)
		)
		_w_split_table(
			'Routine to load character specific state from network',
			'characters_netload_routine',
			lambda c: c.netload_routine
		)
		_w_split_table(
			'Routine to handle a projectile hitting the opponent',
			'characters_projectile_hit_routine',
			lambda c: c.projectile_hit_routine
		)
		_w_split_table(
			'Routine that is called on each frame',
			'characters_global_tick_routine',
			lambda c: c.global_tick_routine
		)

		_w('; Begining of character\'s jump tables\n')
		for routine_type in ['start', 'update', 'offground', 'onground', 'input', 'onhurt']:
			_w_routine_table(routine_type)

def generate_tileset(tileset, game_dir):
	name_upper = tileset.name.upper()

	# Compute some useful values
	rel_tileset_dir = 'game/data/tilesets'
	tileset_dir = '{}/{}'.format(game_dir, rel_tileset_dir)
	tileset_filename = '{}/{}.asm'.format(tileset_dir, tileset.name)
	tileset_label_name = 'tileset_{}'.format(tileset.name)

	# Generate tileset file
	with open(tileset_filename, 'w') as tileset_file:
		def _w(s):
			tileset_file.write(s)

		# Bank number
		_w('TILESET_{}_BANK_NUMBER = CURRENT_BANK_NUMBER\n\n'.format(name_upper))

		# Tileset label
		_w('{}:\n\n'.format(tileset_label_name))

		# Tileset size
		_w('; Tileset\'s size in tiles (zero means 256)\n')
		_w('.byt {}\n\n'.format(stblib.utils.uintasm8(len(tileset.tiles))))

		# Tiles in binary form, each with a label containing its index
		index_expression = '(*-({}+1))/16'.format(tileset_label_name)
		for tile_index in range(len(tileset.tilenames)):
			tile = tileset.tiles[tile_index]
			tile_name = tileset.tilenames[tile_index]

			# Label containing tile's index
			_w('{} = {}\n'.format(tile_name, index_expression))

			# Tile data
			_w('{}\n\n'.format(stblib.asmformat.tiles.tile_to_asm(tile)))

def generate_banks(char_to_bank, tileset_to_bank, game_dir):
	data_banks = []

	# Populate the bank index
	bank_index_template_path = '{}/game/banks.asm'.format(game_dir)
	bank_index_file_path = '{}/game/banks.built.asm'.format(game_dir)
	with open(bank_index_template_path, 'r') as bank_template_file:
		with open(bank_index_file_path, 'w') as bank_index_file:
			for line_num, line in enumerate(bank_template_file):
				if line.startswith(';; mod banks'):
					for bank_number in range(FIRST_AVAILABLE_BANK, 31):
						bank_index_file.write('\n#define CURRENT_BANK_NUMBER FIRST_GAME_BANK+{}\n'.format(stblib.utils.uintasm8(bank_number)))
						if bank_number in char_to_bank.values() or bank_number in tileset_to_bank.values():
							bank_index_file.write('#include "game/banks/data{:02d}_bank.built.asm"\n'.format(bank_number))
							if bank_number not in data_banks:
								data_banks.append(bank_number)
						else:
							bank_index_file.write('#include "game/banks/empty_bank.asm"\n')
				else:
					bank_index_file.write(line)

	# Construct data banks
	for bank_number in data_banks:
		bank_file_path = '{}/game/banks/data{:02d}_bank.built.asm'.format(game_dir, bank_number)
		with open(bank_file_path, 'w') as bank_file:
			# Header
			bank_file.write(textwrap.dedent("""\
				#echo
				#echo ===== DATA{bank_number:02d}-BANK =====
				* = $8000

			""".format_map(locals())))

			# Bank number as first byte
			bank_file.write('.byt CURRENT_BANK_NUMBER\n\n')

			# Data begining label
			bank_file.write('bank_data{bank_number:02d}_begin:\n'.format_map(locals()))

			# Characters includes
			for char_name in char_to_bank:
				if char_to_bank[char_name] == bank_number:
					bank_file.write(textwrap.dedent("""\
						bank_data{bank_number:02d}_character_{char_name}_begin:
						#include "game/data/characters/characters-data/{char_name}/{char_name}.asm"
						bank_data{bank_number:02d}_character_{char_name}_end:
					""".format_map(locals())))

			for tileset_name in tileset_to_bank:
				if tileset_to_bank[tileset_name] == bank_number:
					bank_file.write(textwrap.dedent("""\
						bank_data{bank_number:02d}_tileset_{tileset_name}_begin:
						#include "game/data/tilesets/{tileset_name}.asm"
						bank_data{bank_number:02d}_tileset_{tileset_name}_end:
					""".format_map(locals())))

			# Data end label
			bank_file.write('bank_data{bank_number:02d}_end:\n\n'.format_map(locals()))

			# Size statistics
			bank_file.write(textwrap.dedent("""\
				#echo
				#echo DATA{bank_number:02d}-bank data size:
				#print bank_data{bank_number:02d}_end-bank_data{bank_number:02d}_begin
			""".format_map(locals())))

			for char_name in char_to_bank:
				if char_to_bank[char_name] == bank_number:
					bank_file.write(textwrap.dedent("""\
						#echo
						#echo DATA{bank_number:02d}-bank {char_name} size:
						#print bank_data{bank_number:02d}_character_{char_name}_end-bank_data{bank_number:02d}_character_{char_name}_begin
					""".format_map(locals())))

			for tileset_name in tileset_to_bank:
				if tileset_to_bank[tileset_name] == bank_number:
					bank_file.write(textwrap.dedent("""\
						#echo
						#echo DATA{bank_number:02d}-bank {tileset_name} tileset size:
						#print bank_data{bank_number:02d}_tileset_{tileset_name}_end-bank_data{bank_number:02d}_tileset_{tileset_name}_begin
					""".format_map(locals())))

			bank_file.write(textwrap.dedent("""\
				#echo
				#echo DATA{bank_number:02d}-bank free space:
				#print $c000-*

			""".format_map(locals())))

			# Filler
			bank_file.write(textwrap.dedent("""\
				#if $c000-* < 0
				#error DATADATA{bank_number:02d} bank occupies too much space
				#else
				.dsb $c000-*, $ff
				#endif
			""".format_map(locals())))

def main():
	# Parse command line
	parser = argparse.ArgumentParser(description='Process some integers.')
	parser.add_argument('game-mod-path', help='Path to game\' mod directory')
	parser.add_argument('super-tilt-bro-path', help='Path to game\'s source')
	parser.add_argument('--tpl-dir', default='.', help='Base dir for includes in templates')

	args = parser.parse_args()

	mod_file = getattr(args, 'game-mod-path')
	ensure(os.path.isfile(mod_file), 'file not found: "{}"'.format(mod_file))

	game_dir = getattr(args, 'super-tilt-bro-path')
	ensure(os.path.isdir(game_dir), 'directory not found: "{}"'.format(game_dir))
	game_dir = os.path.abspath(game_dir)
	if os.path.basename(game_dir) == 'game':
		gamedir = os.path.dirname(gamedir)
	ensure(os.path.isdir('{}/game'.format(game_dir)), '"game/" folder not found in source directory "{}"'.format(game_dir))

	templates_dir = args.tpl_dir
	ensure(os.path.isdir(templates_dir), 'directory not found: "{}"'.format(templates_dir))
	templates_dir = os.path.abspath(templates_dir)

	# Parse mod
	with open(mod_file, 'r') as f:
		mod_dict = stblib.jsonformat.json_to_dict(f, os.path.dirname(mod_file))
	mod = stblib.dictformat.import_from_dict(mod_dict)
	mod.check()

	# Gather info from source
	find_first_available_bank(game_dir)

	# Generate characters
	char_to_bank = {}
	current_bank = FIRST_AVAILABLE_BANK
	for character in mod.characters:
		if character.name not in char_to_bank:
			char_to_bank[character.name] = current_bank
			current_bank += 1

		generate_character(character, game_dir, templates_dir)

	# Generate shared character files
	generate_characters_index(mod.characters, game_dir)
	
	# Generate tilesets
	tileset_to_bank = {}
	current_bank = FIRST_AVAILABLE_BANK
	forbidden_banks = [char_to_bank['pepper'], char_to_bank['vgsage'], char_to_bank['sunny']] # Pepper and VGSage occupy all the bank no space left. TODO a more automated way of handling it (Idea: never use a character bank, but put multiple tilesets in the same bank)
	for tileset in mod.tilesets:
		while current_bank in forbidden_banks:
			current_bank += 1
		tileset_to_bank[tileset.name] = current_bank
		current_bank += 1

		generate_tileset(tileset, game_dir)

	# Generate bank files
	generate_banks(char_to_bank, tileset_to_bank, game_dir)

	return 0

if __name__ == '__main__':
	sys.exit(main())
