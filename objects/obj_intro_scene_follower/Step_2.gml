/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_intro_scene_wizard)) {
	obj_level_controller.room_state = GAME_STATE.TUTORIAL;
	obj_level_controller.intro_complete = true;
	instance_destroy(self);
} else {
	self.direction = point_direction(self.x, self.y, obj_intro_scene_wizard.x, obj_intro_scene_wizard.y);
}

prev_x = x;
prev_y = y;