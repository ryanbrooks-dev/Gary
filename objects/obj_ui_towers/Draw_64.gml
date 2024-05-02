/// @description Draw UI text to 
if(obj_towers_gary.ready_in_position and !obj_towers_gary.start_moving_into_position) {
	set_tower_announcement_ui_font();
	var _text_x = view_wport[0]/2;
	var _text_y = 180;
	draw_text_color(_text_x-1, _text_y-1, begin_stage,global.c_my_dark_red,global.c_my_dark_red,global.c_my_dark_gray,global.c_my_dark_gray,1)
	draw_text_color(_text_x+5, _text_y+5, begin_stage,global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,1)
	draw_text(_text_x,_text_y, begin_stage);
}

draw_text(100,100, string("Started moving: {0}, Reached Destination: {1}",obj_towers_gary.start_moving_into_position, obj_towers_gary.ready_in_position));
