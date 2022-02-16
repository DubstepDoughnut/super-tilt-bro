#echo
#echo ====== DATA-09-BANK =====
* = $8000

bank_data09_begin:

bank_data_netplay_launch_screen_extra_data_begin:
#include "game/data/menu_netplay_launch/illustration_map.asm"
#include "game/data/menu_netplay_launch/anims.asm"
#echo
#echo netplay launch extra data size:
#print *-bank_data_netplay_launch_screen_extra_data_begin

bank_data_netplay_launch_screen_extra_code_begin:
#include "game/logic/game_states/netplay_launch_screen/netplay_launch_screen_extra_code.asm"
#echo
#echo netplay launch extra code size:
#print *-bank_data_netplay_launch_screen_extra_code_begin

bank_data09_end:

#echo
#echo DATA-09-bank used size:
#print bank_data09_end-bank_data09_begin
#echo
#echo DATA-09-bank free space:
#print $c000-*

#if $c000-* < 0
#error Data bank occupies too much space
#else
.dsb $c000-*, CURRENT_BANK_NUMBER
#endif
