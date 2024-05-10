/// @description Insert description here
// You can write your code in this editor
if(obj_level_controller.room_state == GAME_STATE.INTRO) {
	if(dialogue_step < array_length(dialogue)) {
		
		var _y = self.y-64;
		var _x = self.x+64;
		set_dialogue_font();
		var _s_height = string_height_ext(dialogue[dialogue_step],32,256)
		draw_rectangle_color(_x-padding,_y,_x+256,_y-_s_height-padding,global.c_my_dark_green,global.c_my_dark_green,global.c_my_dark_green,global.c_my_dark_green,false)
		draw_text_ext(_x,_y,dialogue[dialogue_step],32,256);
	}
	else {
		obj_level_controller.intro_complete = true;
		obj_level_controller.room_state = GAME_STATE.TUTORIAL;
		instance_destroy(self);
	}
}  else {
	obj_level_controller.intro_complete = true;
	obj_level_controller.room_state = GAME_STATE.TUTORIAL;
	instance_destroy(self);
}