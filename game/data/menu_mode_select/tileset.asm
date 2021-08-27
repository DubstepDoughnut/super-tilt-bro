MENU_MODE_SELECTION_TILESET_BANK = CURRENT_BANK_NUMBER

tileset_menu_mode_selection:

; Tileset's size in tiles (zero means 256)
.byt (tileset_menu_mode_selection_end-tileset_menu_mode_selection_tiles)/16

tileset_menu_mode_selection_tiles:
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %00001111, %00000011, %00000100, %00001000, %00000000, %01010000, %00100000, %01110000
.byt %00001111, %00111100, %01111000, %01110000, %01110000, %01110000, %01110000, %01110000
.byt %11110000, %11000000, %00100000, %00010000, %00000000, %00001010, %00011111, %00000000
.byt %11110000, %00111100, %00011110, %00001110, %00001110, %00011111, %00000000, %00000000
.byt %00000001, %00000000, %00000000, %00000000, %00000000, %00000010, %00000101, %00000110
.byt %00000001, %00000001, %00000001, %00000001, %00000011, %00000011, %00000110, %00000110
.byt %10000000, %00000000, %00000000, %00000000, %00000000, %10000000, %11000000, %01100000
.byt %10000000, %10000000, %10000000, %10000000, %11000000, %11000000, %01100000, %01100000
.byt %11100000, %10000000, %00000000, %00000000, %00001000, %00100110, %01010011, %01110001
.byt %11100000, %01110000, %01111000, %01111100, %01110110, %01110011, %01110001, %01110000
.byt %00000111, %00000001, %00000000, %00000000, %00010000, %10101010, %01000100, %10001110
.byt %00000111, %00001110, %00011110, %00111110, %01101110, %11001110, %10001110, %00001110
.byt %01111111, %01000111, %00000000, %00000000, %00000000, %00010000, %00101000, %00111111
.byt %01111111, %00111000, %00111000, %00111000, %00111000, %00111000, %00111000, %00111111
.byt %11111111, %11111100, %00000010, %00000001, %00000000, %00010000, %00100000, %11110000
.byt %11111111, %00000011, %00000001, %00000000, %00000000, %00010000, %00110000, %11110000
.byt %00011111, %00000111, %00001000, %00010000, %00000000, %10100000, %01000000, %11100000
.byt %00011111, %01111000, %11110000, %11100000, %11100000, %11100000, %11100000, %11100000
.byt %11111000, %11100000, %00010000, %00001000, %00000000, %00000101, %00000010, %00000111
.byt %11111000, %00011110, %00001111, %00000111, %00000111, %00000111, %00000111, %00000111
.byt %11111111, %10001111, %00000000, %00000000, %00000000, %00100000, %01010000, %01110000
.byt %11111111, %01110000, %01110000, %01110000, %01110000, %01110000, %01110000, %01110000
.byt %11111100, %11110000, %00001000, %00000000, %00000000, %00000101, %00000010, %00000111
.byt %11111100, %00001110, %00000111, %00000111, %00000111, %00000111, %00000111, %00000111
.byt %01110000, %01010000, %00000000, %00100000, %00000000, %01000000, %00100000, %00011111
.byt %01110000, %01110000, %01110000, %01110000, %01111000, %00111100, %00011111, %00000000
.byt %00000000, %00000000, %00000000, %01110101, %00000000, %00000010, %00000100, %11111000
.byt %00000000, %00000000, %01111111, %00001110, %00011110, %00111100, %11111000, %00000000
.byt %00001110, %00001000, %00000000, %00010111, %00000100, %00000000, %00000000, %11111100
.byt %00001100, %00001100, %00011111, %00011100, %00111000, %01111000, %11111100, %00000000
.byt %01110000, %00100000, %00000000, %11010000, %00100000, %00000000, %00000000, %00111111
.byt %00110000, %00110000, %11111000, %00111000, %00011100, %00011110, %00111111, %00000000
.byt %01110000, %00100000, %00000000, %01010000, %00000000, %00000000, %00000000, %11111000
.byt %01110000, %01110000, %01110000, %01110000, %01110000, %01110000, %11111000, %00000000
.byt %00001110, %00001010, %00000000, %00000100, %00000000, %00000000, %00000000, %00011111
.byt %00001110, %00001110, %00001110, %00001110, %00001110, %00001110, %00011111, %00000000
.byt %00111111, %00010000, %00000000, %00101000, %00000000, %00000000, %00000000, %01111111
.byt %00111000, %00111000, %00111000, %00111000, %00111000, %00111000, %01111111, %00000000
.byt %11110000, %00110000, %00010000, %00000000, %00000000, %00000000, %00000000, %11111111
.byt %00110000, %00010000, %00000000, %00000000, %00000001, %00000011, %11111111, %00000000
.byt %11100000, %10100000, %00000000, %01000000, %00000000, %10000000, %01000000, %00111111
.byt %11100000, %11100000, %11100000, %11100000, %11110000, %01111000, %00111111, %00000000
.byt %00000111, %00000101, %00000000, %00000010, %00000000, %00000001, %00000010, %11111100
.byt %00000111, %00000111, %00000111, %00000111, %00001111, %00011110, %11111100, %00000000
.byt %01110000, %00100000, %00000000, %01010000, %00000000, %00000000, %00000000, %11111111
.byt %01110000, %01110000, %01110000, %01110000, %01110000, %01110000, %11111111, %00000000
.byt %00000111, %00000101, %00000000, %00000010, %00000000, %00000001, %00000010, %11111100
.byt %00000111, %00000111, %00000111, %00000111, %00000111, %00001110, %11111100, %00000000
.byt %00000000, %01111111, %01111111, %01111111, %01111111, %01111111, %01111111, %01111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111100, %00000011, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000011, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000001, %11111110, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111110, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %10000000, %01111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %01111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00001111, %11110000, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11110000, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11100000, %00011111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00011111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00010000, %11101111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11101111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00111111, %11000000, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11000000, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11100000, %00011111, %11111111, %11111111, %11111111, %11111111, %11111100, %11101010
.byt %00011111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111101
.byt %00000000, %11111110, %11111110, %11111110, %11111110, %11111110, %11111110, %11111110
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %00111111, %00111111
.byt %01111111, %01111110, %01111110, %01111110, %01111110, %01111110, %01111110, %01111110
.byt %11111110, %11111101, %11111101, %11111101, %11111101, %11111101, %11111101, %11111101
.byt %01010111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %10101111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %01111110, %01111110, %01111110, %01111110, %11111101, %11111101, %11111101, %11111101
.byt %10111111, %10111111, %10111111, %10111111, %01111110, %01111110, %01111110, %01111110
.byt %01111110, %01111111, %01100110, %01011111, %01111111, %10111111, %10111111, %10111111
.byt %11111101, %11111101, %11111101, %10111001, %11111100, %01111110, %01111110, %01111110
.byt %11111111, %11110111, %11100111, %10101111, %11011111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11011111, %00111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111110, %11111101
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111110, %11111101, %11111011
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %01111111, %10111111, %11011111
.byt %11111111, %11111111, %11111111, %11111111, %01111111, %10111111, %11011111, %01101111
.byt %11111111, %11111111, %11111111, %10011111, %11100111, %11110111, %11111001, %11111100
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %01111100, %01111110, %11111110, %01111110, %10111110, %10111110, %11111110, %10111110
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11110000, %10000000, %10000000, %10000000
.byt %11111111, %11111111, %11111111, %11110000, %10001111, %01111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %00001111, %00001111, %00011111, %00011111
.byt %11111111, %11111111, %11111111, %00001111, %11110001, %11111110, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %01111111, %10111111, %11011111
.byt %10111111, %10111111, %10111111, %10111111, %10111111, %01111111, %01111111, %01111111
.byt %01111110, %01111110, %01111111, %01111111, %01111111, %11111111, %11111111, %11111111
.byt %11111011, %11110111, %11101111, %11011111, %10111111, %01111111, %11111111, %11111111
.byt %11110111, %11101111, %11011111, %10111111, %01111111, %11111111, %11111111, %11111111
.byt %11101111, %11110111, %11111011, %11111101, %11111110, %11111111, %11111111, %11111111
.byt %10110111, %01011011, %10101101, %01010110, %10101011, %01010101, %10101010, %01010101
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111110, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %01111111, %10111111, %10111111, %01111111, %11000111, %10110001, %10111101, %10111110
.byt %11111111, %01111111, %01111111, %10111111, %10111111, %11111111, %11111110, %11111111
.byt %11111110, %11111110, %11111110, %11111110, %11111110, %11100010, %11101101, %11111101
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111101, %00011110, %01111110
.byt %11111111, %11111111, %11111111, %11011111, %11111111, %10111111, %10111000, %11110000
.byt %11110111, %11101111, %11011111, %11111111, %10111111, %11111000, %11110111, %11101111
.byt %11100000, %11110000, %11110010, %11100010, %10000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11101111, %10011101, %01111111, %11111111, %11111111, %11111111
.byt %00011111, %11110111, %11100111, %11111111, %10111111, %00011111, %01111000, %01110000
.byt %11110111, %11101111, %11011111, %10111111, %01011111, %11111000, %11110111, %11111111
.byt %11111111, %11111111, %11111111, %11111011, %11111111, %11111101, %11111101, %01111111
.byt %11101111, %11110111, %11111011, %11111111, %11111101, %11111111, %01111111, %11111110
.byt %01111111, %01111111, %01111111, %01111111, %01111111, %10111111, %10111111, %10111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %01111111, %01111111, %01111111
.byt %11110011, %11110111, %11101111, %11101111, %11101111, %11011111, %11011111, %10111111
.byt %11111111, %11101111, %11111111, %11111111, %11111111, %11111111, %11111111, %11011111
.byt %11111011, %11110011, %11111100, %11111100, %11111100, %11111100, %11111100, %11111100
.byt %11110111, %11111100, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %00000000, %00000000, %00000000, %00000000, %00000000, %00111100
.byt %11111111, %00000000, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %10101010, %00000000, %00110110, %00110110, %00110110, %00110110, %00110110
.byt %10101010, %01010101, %11111111, %11111111, %11111111, %11001001, %11111111, %11111111
.byt %11101111, %10100111, %00011111, %00011111, %00011111, %00011111, %00011111, %00011111
.byt %10110111, %01011111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %10111111, %10011111, %11011111, %11100111, %11111011, %11111101, %11111110, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11110111, %11111011, %11111101, %11111110
.byt %11111101, %11111101, %11111101, %11111101, %11111101, %11111101, %11111101, %10110101
.byt %11111110, %11111110, %11111110, %11111110, %11111110, %11111110, %11111110, %01111110
.byt %11100000, %11100000, %10100000, %10110111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %10111111, %11111111, %11111111, %11111111, %11111111, %11111111, %10111111
.byt %00000000, %00000000, %00000000, %10000000, %10000000, %10000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %01111111, %11111111, %11111111
.byt %01110000, %00011111, %00111111, %01111111, %11111111, %11111111, %00111111, %00111111
.byt %10001111, %11111111, %11111111, %11111111, %11111111, %00111111, %11111111, %11011111
.byt %11111110, %11110010, %11110000, %11110000, %11100000, %11100000, %11110000, %11110001
.byt %11110011, %11111101, %11111111, %11101111, %11111111, %11111111, %11111111, %11111111
.byt %10111111, %11111111, %01101111, %01100011, %01110110, %01111011, %01111110, %01111111
.byt %01111111, %00011111, %11011111, %11111101, %11111001, %11111100, %11111101, %11111101
.byt %11111111, %11111110, %11111101, %11111010, %01100011, %11011111, %01111111, %11111111
.byt %11111111, %11111111, %11111110, %11111101, %11111111, %00111111, %11111111, %11111111
.byt %01011111, %10111111, %10111111, %01111111, %10011111, %11101111, %11110001, %11111111
.byt %10111111, %01111111, %01111111, %10111111, %11111111, %11111111, %11111110, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %10111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %01111111
.byt %11111100, %11111100, %11111100, %11111100, %11111100, %11111100, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00111100, %00111100, %00111100, %00111100, %00111100, %00111100, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11101111, %11111111, %11111111, %11111111, %11111111
.byt %00110110, %00000000, %00000000, %00000000, %00000000, %00000000, %11111111, %11111111
.byt %11001001, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00011111, %00011111, %00011111, %00011111, %00011111, %00011111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11000000, %11111110, %11111110, %01111110, %10111110, %10111110, %10111110, %11111110
.byt %10111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %10111111
.byt %10111111, %10111110, %11111110, %11011110, %11111111, %11111111, %11111111, %11111111
.byt %11111110, %11111111, %11011111, %11111111, %11101111, %11110111, %11111011, %11111100
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %10000000, %10000000, %10000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %01111111
.byt %00011111, %00001111, %00001111, %00000111, %00000111, %00000111, %00000111, %00000110
.byt %11101111, %11111111, %11110111, %11111011, %11111111, %11111111, %11111110, %11111001
.byt %11110001, %11100001, %11000011, %10000011, %10000111, %10001111, %00011111, %00111111
.byt %11101111, %11011111, %10111111, %11111111, %11111111, %01111111, %11111111, %11111111
.byt %01111111, %01111111, %11111111, %10111111, %01111110, %01111110, %01111110, %01111110
.byt %11111101, %11111101, %01111101, %01111110, %11111101, %11111101, %11111101, %11111101
.byt %11011111, %11101111, %11111011, %11110111, %11111011, %11110111, %11100111, %11011111
.byt %11111111, %11111111, %11110111, %11111000, %11111101, %11111011, %11111111, %11101111
.byt %11111111, %11111101, %11100011, %00011111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %10111110, %11110001, %11111111, %11001111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11001111, %11101111, %11111111
.byt %11111111, %11111111, %11111111, %00111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111110, %11111110, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %10111111, %10111111, %01111100, %01111100, %01111100, %01111100, %01111100, %01111100
.byt %11111110, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %00000000, %10000000, %11110000, %11111111, %11111111, %11111111, %11100111, %11011111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11101111
.byt %00000000, %00000001, %00001111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %01111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %01111110, %01111110, %11111111, %01111111, %11111111, %01111111, %11111111, %11111111
.byt %11111101, %11111101, %01111111, %11111111, %01111111, %11111111, %01111111, %00000000
.byt %11111111, %00001111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11110000, %00000000
.byt %11111111, %10011111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %00000000
.byt %11111111, %11110101, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %00000000
.byt %11111111, %01111111, %11111111, %11111111, %11111111, %11111111, %11111101, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111110, %00000000
.byt %11111111, %11111111, %01111111, %00111111, %10011111, %11111111, %11110111, %11111111
.byt %00111111, %01111111, %11111111, %11111111, %11111111, %11011111, %00001111, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111011, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111100, %00000000
.byt %11111111, %11111110, %11111111, %11111111, %11111111, %11111111, %11111011, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %00000111, %00000000
.byt %11111111, %11101010, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %00000000
.byt %10111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %00000000
.byt %11111111, %00111000, %11111111, %11111111, %11111111, %11111111, %10111011, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11000111, %00000000
.byt %11111100, %01111110, %11111110, %11111110, %11111110, %11111110, %11111110, %11101011
.byt %01111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %00010100
.byt %11111111, %11111111, %01111111, %00111111, %10011111, %11111111, %11110111, %11111111
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11011111, %00001111, %00000000
.byt %00000000, %01111110, %00110011, %01110011, %01111011, %01101110, %01100000, %00100000
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00011110, %00110011, %01100011, %01111110, %01101100, %01100110, %00100011
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00111110, %01100011, %01100000, %01111000, %01100000, %00110000, %00011110
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00011110, %00110011, %00110000, %00011100, %01000110, %01100110, %00111100
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %00000000, %01111110, %00111111, %00001100, %00001100, %00001100, %00001100, %00000100
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00011110, %00110011, %01100011, %01111011, %01111111, %01100011, %00100001
.byt %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt %11111111, %10010001, %00000000, %00100000, %10000001, %11000011, %11100111, %11111111
tileset_menu_mode_selection_end:
