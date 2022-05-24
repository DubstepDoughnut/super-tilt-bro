+ARCADE_BTT_SPRITES_TILESET_BANK_NUMBER = CURRENT_BANK_NUMBER

+arcade_btt_sprites_tileset:

; Tileset's size in tiles (zero means 256)
.byt (arcade_btt_sprites_tileset_end-arcade_btt_sprites_tileset_tiles)/16

arcade_btt_sprites_tileset_tiles:
+TILE_ARCADE_BTT_SPRITES_TILESET_TARGET = (*-arcade_btt_sprites_tileset_tiles)/16
.byt %00000000, %00011000, %00111100, %01100110, %01100110, %00111100, %00011000, %00000000
.byt %00111100, %01111110, %11111111, %11111111, %11111111, %11111111, %01111110, %00111100
+TILE_ARCADE_BTT_SPRITES_TILESET_TARGET_DARK = (*-arcade_btt_sprites_tileset_tiles)/16
.byt %00111100, %01111110, %11111111, %11111111, %11111111, %11111111, %01111110, %00111100
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
+TILE_ARCADE_BTT_SPRITES_TILESET_TARGET_EXPLODE = (*-arcade_btt_sprites_tileset_tiles)/16
.byt %11000011, %11101100, %00000010, %00010010, %00000010, %00000000, %10000010, %01000011
.byt %11000011, %11101100, %00001110, %00011110, %00000010, %01100000, %11100010, %01000011
+TILE_ARCADE_BTT_SPRITES_TILESET_TP_PORTAL = (*-arcade_btt_sprites_tileset_tiles)/16
.byt %01111111, %00010010, %11111111, %00111111, %11111001, %00011111, %11100011, %00111111
.byt %01111111, %00011111, %11111111, %00111111, %11111111, %00011111, %11111111, %00111111
+TILE_ARCADE_BTT_SPRITES_TILESET_TP_BEAM = (*-arcade_btt_sprites_tileset_tiles)/16
.byt %00011000, %00111100, %00000000, %00111100, %00011000, %00111100, %00111100, %00000000
.byt %00011000, %00111100, %00011000, %00111100, %00011000, %00111100, %00111100, %00011000
+TILE_ARCADE_BTT_SPRITES_TILESET_FULL_BACKDROP = (*-arcade_btt_sprites_tileset_tiles)/16
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
+TILE_ARCADE_BTT_SPRITES_TILESET_LITTLE_STAR = (*-arcade_btt_sprites_tileset_tiles)/16
.byt %01000000, %11100000, %01010000, %00000100, %00000001, %00000000, %00000000, %00000000
.byt %01000000, %11100000, %01010000, %00000100, %00000001, %00000000, %00000000, %00000000
+TILE_ARCADE_BTT_SPRITES_TILESET_TINY_STAR = (*-arcade_btt_sprites_tileset_tiles)/16
.byt %01000000, %10100000, %01000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %01000000, %10100000, %01000000, %00000000, %00000000, %00000000, %00000000, %00000000
arcade_btt_sprites_tileset_end:
