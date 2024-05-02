/// @description Draw UI text to 

if(room = rm_menu) {
	if(is_title) {
		// Title
		set_title_font();
		draw_text_color((view_wport[0]/2)+2, y+4, title,global.c_my_dark_red,global.c_my_dark_red,global.c_my_dark_gray,global.c_my_dark_gray,1)
		draw_text(view_wport[0]/2, y, title);

		// Subtitle
		set_subtitle_font();
		draw_text_color((view_wport[0]/2)+2, y+146, subtitle,global.c_my_dark_blue,global.c_my_dark_blue,global.c_my_dark_gray,global.c_my_dark_gray,1)
		draw_text(view_wport[0]/2, y+144, subtitle);
	} else {
		set_prologue_font();
		var _text_x = 220;
		var _text_y = 180;
		if(!section_4_ready) {
			draw_text_color(_text_x-2, _text_y-2, prologue_array[0],global.c_my_dark_blue,global.c_my_dark_blue,global.c_my_dark_blue,global.c_my_dark_blue,1)
			draw_text_color(_text_x+3, _text_y+3, prologue_array[0],global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,1)
			draw_text(_text_x,_text_y, prologue_array[0]);
			if(self.section_2_ready) {
				var _text_padding = y_pad_constant;
				draw_text_color(_text_x-2, _text_y-2+_text_padding, prologue_array[1],global.c_my_dark_blue,global.c_my_dark_blue,global.c_my_dark_blue,global.c_my_dark_blue,1)
				draw_text_color(_text_x+3, _text_y+3+_text_padding, prologue_array[1],global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,1)
				draw_text(_text_x,_text_y+_text_padding, prologue_array[1]);
			}
			if(self.section_3_ready) {
				var _text_padding = y_pad_constant;
				draw_text_color(_text_x-2, _text_y-2+(_text_padding*2), prologue_array[2],global.c_my_dark_blue,global.c_my_dark_blue,global.c_my_dark_blue,global.c_my_dark_blue,1)
				draw_text_color(_text_x+3, _text_y+3+(_text_padding*2), prologue_array[2],global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,1)
				draw_text(_text_x,_text_y+(_text_padding*2), prologue_array[2]);
			}
		} else {
			if(self.section_4_ready) {
				var _text_padding = y_pad_constant;
				is_gary_time = true;
				draw_text_color(_text_x-2, _text_y-2, prologue_array[3],global.c_my_dark_blue,global.c_my_dark_blue,global.c_my_dark_blue,global.c_my_dark_blue,1)
				draw_text_color(_text_x+3, _text_y+3, prologue_array[3],global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,1)
				draw_text(_text_x,_text_y, prologue_array[3]);
			}
			if(self.section_5_ready) {
				var _text_padding = y_pad_constant;
				draw_text_color(_text_x-2, _text_y-2+(_text_padding), prologue_array[4],global.c_my_dark_blue,global.c_my_dark_blue,global.c_my_dark_blue,global.c_my_dark_blue,1)
				draw_text_color(_text_x+3, _text_y+3+_text_padding, prologue_array[4],global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,1)
				draw_text(_text_x,_text_y+_text_padding, prologue_array[4]);
			}
			if(self.section_6_ready) {
				var _text_padding = y_pad_constant;
				draw_text_color(_text_x-2, _text_y-2+(_text_padding*2), prologue_array[5],global.c_my_dark_blue,global.c_my_dark_blue,global.c_my_dark_blue,global.c_my_dark_blue,1)
				draw_text_color(_text_x+3, _text_y+3+(_text_padding*2), prologue_array[5],global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,1)
				draw_text(_text_x,_text_y+(_text_padding*2), prologue_array[5]);
			}
		}
	}
}