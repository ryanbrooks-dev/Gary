/// @description Draw UI text to 
if(room_state == MENU_STATES.TITLE) {
	// Title
	set_title_font();
	draw_text_color(floor(room_width/2)+2-x_buffer, y+3, title,global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,1)
	draw_text(floor(room_width/2)-x_buffer, y, string(title));

	// Subtitle
	set_subtitle_font();
	draw_text_color(floor(room_width/2)+2-x_buffer, y+146, subtitle,global.c_my_dark_blue,global.c_my_dark_blue,global.c_my_dark_gray,global.c_my_dark_gray,1)
	draw_text(floor(room_width/2)-x_buffer, y+144, subtitle);
} 
else if(room_state == MENU_STATES.PROLOGUE) {
	
	if(latest_section < array_length(prologue_array)) {
		set_prologue_font();
		var _text_x = 160;
		var _text_y = 120;
		var _prev_s_height = prev_string_h;
		draw_text_ext(_text_x,_text_y,prologue_array[latest_section],50,960);
		//for(var _i = 0; _i <= self.latest_section; _i = _i+1) {
		//	var _temp_pad = 0;
		//	if(_i > 0) _temp_pad = y_pad_constant * _i;
		//	//draw_rectangle_color(_text_x-16,_text_y-16+_temp_pad,_text_x+1024+16,_text_y+_temp_pad+_s_height+16,global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,false);
		//	draw_text_ext(_text_x,_text_y+_temp_pad+_prev_s_height,prologue_array[_i],50,960);
		//	prev_string_h = string_height_ext(prologue_array[_i],40, 960)
		//}
	} else {
		room_state = MENU_STATES.NEXT_ROOM;
	}
}