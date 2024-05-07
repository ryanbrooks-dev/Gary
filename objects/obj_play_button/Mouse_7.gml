/// @description Mouse button released, time to play
event_inherited();

self.fetch_gary = true;
obj_main_menu_gary.fetch_gary = true
global.play_game = true;
//alarm[1]=30*3;
alarm[0] = 30*12;

