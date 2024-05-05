/// @description Insert description here
// You can write your code in this editor
if(obj_level_controller.play_intro_scene) {
	if(dialogue_step < array_length(dialogue)) {
		
		var _y = self.y+64;
		var _x = self.x+32;
		set_dialogue_font();
		var _s_height = string_height_ext(dialogue[dialogue_step],32,256)
		draw_rectangle_color(_x-padding,_y,_x+256,_y-_s_height-padding,global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,false)
		draw_text_ext(_x,_y,dialogue[dialogue_step],32,256);
	}
}