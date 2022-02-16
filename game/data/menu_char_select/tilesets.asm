;
; Background tileset
;

tileset_menu_char_select:

; Tileset's size in tiles (zero means 256)
.byt (tileset_menu_char_select_end-tileset_menu_char_select_tiles)/16

tileset_menu_char_select_tiles:
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111101, %11111100, %11111110, %11111110, %11111111, %11111111
.byt %00000000, %00000000, %00000010, %00000011, %00000001, %00000001, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %01111111, %00011111, %00000111, %00000001, %00000000
.byt %00000000, %00000000, %00000000, %10000000, %11100000, %11111000, %11111110, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11000001, %01000001
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %10000000
.byt %11111111, %11110111, %11100011, %11100011, %11000001, %11000001, %10000000, %10000000
.byt %00000000, %00001000, %00011100, %00011100, %00111110, %00111110, %01111111, %01111110
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %00000011, %00000110
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000001
.byt %11111111, %11111111, %11111110, %11111000, %11110000, %11000000, %10000000, %00000000
.byt %00000000, %00000000, %00000001, %00000111, %00001111, %00111111, %01111111, %11111111
.byt %11011111, %00011111, %00111111, %00111111, %01111111, %01111111, %11111111, %11111111
.byt %00100000, %11100000, %11000000, %11000000, %10000000, %10000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111100
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000011
.byt %10000000, %10000000, %11000000, %11000000, %11100000, %11100000, %11110000, %00000000
.byt %01111111, %01111111, %00111111, %00111111, %00011111, %00011111, %00001111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11000000, %11100000, %11100000, %11100000, %11100000, %11100000, %11100000, %11110000
.byt %00000000, %00001000, %00001000, %00011000, %00011000, %00110000, %00100000, %01100001
.byt %11111110, %11111100, %11111100, %11111000, %11111000, %11110000, %01100000, %01100001
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %10000000, %00000100
.byt %00000111, %00001111, %00011111, %00011000, %01100000, %10000000, %10000011, %00000111
.byt %00000001, %00000001, %00000011, %00000011, %00000001, %00000000, %00000000, %00000000
.byt %11111110, %11111110, %11111100, %00000100, %00000000, %00000001, %11100001, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %00000111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %11111000
.byt %10000000, %11100000, %11111110, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %01111111, %00011111, %00000001, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %11000001, %11111000, %11111110, %11111100, %11111000
.byt %11111111, %11111111, %11111111, %00111111, %00000111, %00000001, %00000011, %00000111
.byt %00000000, %00000000, %01110000, %11110000, %00111000, %00000000, %00000000, %00000000
.byt %11110000, %11110000, %11110000, %11110000, %11111000, %11111000, %11111000, %11111000
.byt %01000001, %01000001, %00000001, %00000011, %00000011, %00000111, %00000111, %00001111
.byt %01000001, %01000001, %00000001, %00000011, %00000011, %00000111, %00000111, %00001111
.byt %00000111, %00000001, %00000000, %00000000, %10000000, %11100000, %11000000, %00000000
.byt %00000111, %00000001, %00000000, %00000000, %10000000, %11100000, %11111100, %11111111
.byt %10000000, %11111000, %00111110, %00001000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %00111111, %00001111, %00000111, %00000011, %00000011, %10000011
.byt %00000000, %00000000, %00000000, %00000011, %00001111, %00111111, %00001111, %00000001
.byt %11111111, %11111111, %11111111, %11111100, %11110000, %11000000, %11110000, %11111110
.byt %00001111, %00111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11110000, %11000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111100, %11111000, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000011, %00000111, %00000000, %00000000, %00000000
.byt %11100000, %11000000, %00000000, %00000000, %01111111, %11111111, %11111111, %11111111
.byt %00011111, %00111111, %11111111, %11111111, %10000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %01111111, %11111111, %11111111, %11111111, %11111111
.byt %11111000, %11111111, %11111111, %10000000, %00000000, %00000000, %00000000, %00000000
.byt %00001110, %00001110, %01000100, %11000000, %11100000, %11100011, %11110111, %11111111
.byt %00001111, %11111110, %10111110, %00111100, %00011100, %00011100, %00001000, %00000000
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %11111111, %11111111
.byt %11111111, %11111111, %00111111, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000, %00001111, %01111111, %11111111, %11111111
.byt %10000011, %10000011, %00000111, %00001111, %00010000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11000000, %00000000, %00000000, %00000000, %00000000
.byt %00011111, %00000111, %01111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11100000, %11111000, %10000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111101, %11111100, %11111100, %11111100, %11111110, %11111111, %11111111
.byt %00000011, %00000011, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %00000000, %00000000, %01100000, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %01011100, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %00000000, %00000000, %10001100, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %01011100, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %00111111, %00000000, %00000000, %00000000, %00000000, %00000101
.byt %11111111, %11111111, %01111111, %00000000, %00000000, %00000101, %00101111, %00101101
.byt %11111111, %11111111, %11111100, %00000000, %00000000, %00000000, %00000000, %10100000
.byt %11111111, %11111111, %11111110, %00000000, %00000000, %10100000, %11110100, %10110100
.byt %11111111, %11111111, %00000000, %00000000, %00110001, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %00111010, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %00000000, %00000000, %00000110, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %00111010, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %10111111, %00111111, %00111111, %00111111, %11111111, %11111111, %11111111
.byt %11000000, %11000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111101, %11111100, %11111100, %11111100, %11111111, %11111111, %11111111
.byt %00000011, %00000011, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %00000101, %00000101, %00000101, %00000101, %00000101, %00000101, %00000101, %00000101
.byt %00101111, %00101111, %00101111, %00101111, %00101111, %00101111, %00101111, %00101111
.byt %10100000, %10100000, %10100000, %10100000, %10100000, %10100000, %10100000, %10100000
.byt %11110100, %11110100, %11110100, %11110100, %11110100, %11110100, %11110100, %11110100
.byt %11111111, %11111111, %00111111, %00111111, %00111111, %00011111, %00000000, %00000000
.byt %01111111, %01111111, %01111111, %00111111, %00111111, %00111111, %00000000, %00010000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %00000000, %00000000
.byt %11111111, %11111111, %11111110, %11111110, %11111110, %11111100, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111110, %11111110, %11111110, %00000000, %00000100
.byt %00011111, %00001111, %00000010, %00000111, %00011111, %00011111, %00000111, %00011110
.byt %00111111, %00011111, %00000111, %00111111, %00011111, %00111111, %00001111, %00111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %01111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111100, %11111000, %10100000, %11110000, %11111100, %11111100, %11110000, %00111100
.byt %11111110, %11111100, %11110000, %11111110, %11111100, %11111110, %11111000, %11111110
.byt %00011111, %00011111, %00000001, %00000111, %00011111, %00011111, %00011111, %00011100
.byt %00111111, %00011111, %00010111, %00111111, %00111111, %00011111, %00111111, %00011111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %01111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %01111111
.byt %11111100, %11111100, %11000000, %11110000, %11111100, %11111100, %11111100, %00011100
.byt %11111110, %11111100, %11110100, %11111110, %11111110, %11111100, %11111110, %01111100
.byt %11111100, %11100000, %10000000, %10000000, %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000011, %00011111, %00111111, %01111111, %00111111, %11001111, %11110111
.byt %00111111, %00000111, %00000001, %00000001, %00000000, %00000000, %00000000, %00000000
.byt %00000000, %11000000, %11111000, %11111100, %11111100, %11110011, %11101111, %11111111
.byt %11111100, %11100000, %10000000, %10000000, %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000011, %00011111, %00111111, %01111111, %10011111, %11101111, %11111111
.byt %00001110, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %00000000, %11110001, %11111111, %11111111, %11111001, %11100110, %11011111, %11111111
.byt %00111111, %00000111, %00000011, %00000001, %00000001, %00000000, %00000000, %00000000
.byt %00000000, %11000000, %11111000, %11111100, %11111100, %11111110, %11111001, %11110111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111100, %11110010, %11100011, %11011100, %11011111
.byt %00000000, %00000000, %00000000, %00000000, %00000010, %00000011, %00011100, %00011111
.byt %11111111, %11111111, %11111111, %00000111, %01101011, %11011011, %00111011, %10111011
.byt %00000000, %00000000, %00000000, %00000000, %01101000, %11011000, %00111000, %10111000
.byt %11010011, %11010011, %11011111, %11011100, %11011100, %11100011, %11111100, %11111111
.byt %00010011, %00010011, %00011111, %00011100, %00011100, %00000011, %00000000, %00000000
.byt %10101011, %10101011, %10111011, %10111011, %10110111, %10101111, %00011111, %11111111
.byt %10101000, %10101000, %10111000, %10111000, %10110000, %10100000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000, %10101010, %01010101, %10101010, %01010101
.byt %11111111, %11111111, %11111111, %11111111, %01010101, %10101010, %01010101, %10101010

; Tiles used only by stage selection

TILE_MENU_CHAR_SELECT_STAGE_SELECTOR = (*-tileset_menu_char_select_tiles)/16
.byt %11111111, %11000011, %10000001, %10000001, %10000001, %10000001, %11000011, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
TILE_MENU_CHAR_SELECT_STAGE_SMOOTH = (*-tileset_menu_char_select_tiles)/16
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
TILE_MENU_CHAR_SELECT_STAGE_PLATFORM = (*-tileset_menu_char_select_tiles)/16
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000

; Tiles used only by netplay launcher

TILE_MENU_NETPLAY_LAUNCH_FILLED_SQUARE = TILE_MENU_CHAR_SELECT_STAGE_PLATFORM
TILE_MENU_NETPLAY_LAUNCH_ROUNDED_W = (*-tileset_menu_char_select_tiles)/16
.byt %11000000, %10000000, %00000000, %00000000, %00000000, %00000000, %10000000, %11000000
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
TILE_MENU_NETPLAY_LAUNCH_ROUNDED_S = (*-tileset_menu_char_select_tiles)/16
.byt %00000000, %10000001, %11000011, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
TILE_MENU_NETPLAY_LAUNCH_ROUNDED_E = (*-tileset_menu_char_select_tiles)/16
.byt %00000011, %00000001, %00000000, %00000000, %00000000, %00000000, %00000001, %00000011
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
TILE_MENU_NETPLAY_LAUNCH_TRIANGLE_NW = (*-tileset_menu_char_select_tiles)/16
.byt %11111000, %11110000, %11100000, %11000000, %10000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
TILE_MENU_NETPLAY_LAUNCH_TRIANGLE_NE = (*-tileset_menu_char_select_tiles)/16
.byt %00011111, %00001111, %00000111, %00000011, %00000001, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
TILE_MENU_NETPLAY_LAUNCH_TRIANGLE_SW = (*-tileset_menu_char_select_tiles)/16
.byt %00000000, %00000000, %00000000, %10000000, %11000000, %11100000, %11110000, %11111000
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
TILE_MENU_NETPLAY_LAUNCH_TRIANGLE_SE = (*-tileset_menu_char_select_tiles)/16
.byt %00000000, %00000000, %00000000, %00000001, %00000011, %00000111, %00001111, %00011111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
TILE_MENU_NETPLAY_LAUNCH_VERTICAL_LINE = (*-tileset_menu_char_select_tiles)/16
.byt %11111000, %11111000, %11111000, %11111000, %11111000, %11111000, %11111000, %11111100
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000

TILE_MENU_NETPLAY_LAUNCH_WIFI_ICON = (*-tileset_menu_char_select_tiles)/16
.byt %11111111, %11000000, %10000000, %10000000, %10000000, %10000000, %10000000, %10000000
.byt %00000000, %00111111, %01110000, %01000000, %00000111, %00011111, %01111100, %01110000
.byt %11111111, %00000011, %00000001, %00000001, %00000001, %00000001, %00000001, %00000001
.byt %00000000, %11111100, %00001110, %00000010, %11100000, %11111000, %00111110, %00001110
.byt %10000000, %10000000, %10000000, %10000000, %10000000, %10000000, %11000000, %11111111
.byt %01100011, %01001111, %01111100, %01111011, %01111111, %01111110, %00111110, %00000000
.byt %00000001, %00000001, %00000001, %00000001, %00000001, %00000001, %00000011, %11111111
.byt %11000110, %11110010, %00111110, %11011110, %11111110, %01111110, %01111100, %00000000

tileset_menu_char_select_end:

;
; Sprites tileset
;

tileset_menu_char_select_sprites:

; Tileset's size in tiles (zero means 256)
.byt (tileset_menu_char_select_sprites_end-tileset_menu_char_select_sprites_tiles)/16

tileset_menu_char_select_sprites_tiles:
TILE_MENU_CHAR_SELECT_SPRITE_P = (*-tileset_menu_char_select_sprites_tiles+CHARACTERS_END_TILES_OFFSET)/16
.byt %01111111, %11000011, %11001001, %11001001, %11000011, %11001111, %11001111, %01111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
TILE_MENU_CHAR_SELECT_SPRITE_1 = (*-tileset_menu_char_select_sprites_tiles+CHARACTERS_END_TILES_OFFSET)/16
.byt %11111110, %11100111, %11000111, %10000111, %11100111, %11100111, %11100111, %11111110
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
TILE_MENU_CHAR_SELECT_SPRITE_2 = (*-tileset_menu_char_select_sprites_tiles+CHARACTERS_END_TILES_OFFSET)/16
.byt %11111110, %11000111, %10000011, %10110011, %11100111, %11001111, %10000011, %11111110
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000

TILE_MENU_CHAR_SELECT_SPRITE_BUILDERS_PREPARE = (*-tileset_menu_char_select_sprites_tiles+CHARACTERS_END_TILES_OFFSET)/16
.byt %11110000, %11000000, %10111100, %10111110, %00011110, %00011110, %00011110, %10111100
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
TILE_MENU_CHAR_SELECT_SPRITE_BUILDERS_MOVE = (*-tileset_menu_char_select_sprites_tiles+CHARACTERS_END_TILES_OFFSET)/16
.byt %11101110, %11110111, %01110011, %01111001, %01111000, %01111101, %01111000, %00110010
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
TILE_MENU_CHAR_SELECT_SPRITE_BUILDERS_HIT = (*-tileset_menu_char_select_sprites_tiles+CHARACTERS_END_TILES_OFFSET)/16
.byt %00011110, %00111110, %01111110, %11111000, %11110001, %11110011, %01110111, %01100110
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000

; Stage selection sprites, could be placed over characters sprites (would require writing vram during transition between states)

TILE_MENU_CHAR_SELECT_SPRITE_STAGE_SELECTOR = (*-tileset_menu_char_select_sprites_tiles+CHARACTERS_END_TILES_OFFSET)/16
.byt %00000000, %00111100, %01000010, %01000010, %01000010, %01000010, %00111100, %00000000
.byt %01111110, %11000011, %10000001, %10000001, %10000001, %10000001, %11000011, %01111110

; Netplay launch sprites, could be placed over characters sprites

TILE_MENU_NETPLAY_LAUNCH_SPRITE_SELECTOR = TILE_MENU_CHAR_SELECT_SPRITE_STAGE_SELECTOR
TILE_MENU_NETPLAY_LAUNCH_SPRITE_SERVER = (*-tileset_menu_char_select_sprites_tiles+CHARACTERS_END_TILES_OFFSET)/16
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11000000, %11000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000

tileset_menu_char_select_sprites_end:

;
; Random statue tileset
;

tileset_menu_char_select_random_statue:

; Tileset's size in tiles (zero means 256)
.byt (tileset_menu_char_select_random_statue_end-tileset_menu_char_select_random_statue_tiles)/16

tileset_menu_char_select_random_statue_tiles:
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111110, %11111100, %11111100, %11111000, %11111000, %11111000
.byt %00000000, %00000000, %00000000, %00000001, %00000001, %00000011, %00000011, %00000011
.byt %11111000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00001111
.byt %00000000, %00000111, %11111111, %11111111, %11111111, %11111111, %11110000, %10000000
.byt %00000001, %00000000, %00000001, %00000010, %00000001, %00000000, %00000000, %11000000
.byt %00000000, %11111110, %11111111, %11111111, %11111111, %11111111, %00111111, %00011111
.byt %11111111, %00111111, %01011111, %10101111, %01010111, %10100111, %00000011, %00000011
.byt %00000000, %00000000, %11000000, %11100000, %11110000, %11110000, %11111000, %11111000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111000, %11111101, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000010, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %01111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11100000, %11110000, %11110000, %11110000, %11100000, %11100000, %11000000, %10000000
.byt %00001111, %00000111, %00000111, %00000111, %00001111, %00001111, %00011111, %00111111
.byt %00000011, %00000011, %00000011, %00000011, %00000111, %00000111, %00000111, %00001111
.byt %11111000, %11111000, %11111000, %11111000, %11110000, %11110000, %11110000, %11100000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111110, %11111000, %11110000, %11100000, %11000000, %10000000, %00000000
.byt %00000000, %00000000, %00000001, %00000111, %00001111, %00011111, %00111111, %01111111
.byt %00000000, %00000000, %00000000, %00000000, %00000001, %00000011, %00001111, %00011111
.byt %01111111, %11111111, %11111111, %11111110, %11111100, %11110000, %11100000, %11000000
.byt %00011111, %00111111, %01111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11000000, %10000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111110, %11111110, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000, %11111111, %11111111, %11111111, %11111111
.byt %01111111, %11111111, %11111111, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %00111111, %00111111, %01111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %10000000, %10000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111110, %11111100, %11111100, %11111000, %11111000, %11111000, %11111000, %11111000
.byt %00000000, %00000001, %00000001, %00000011, %00000011, %00000011, %00000011, %00000011
.byt %00000001, %00001010, %00000100, %00000000, %00000001, %00000001, %00000001, %00000001
.byt %00000000, %11111110, %11111110, %11111110, %11111100, %11111100, %11111100, %11111100
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11110000, %11110000, %11111000, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000111, %00000111, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %00000001, %00000011, %00000111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111100, %11111000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
tileset_menu_char_select_random_statue_end:
