/// @description Insert description here
move_outside_all(self.direction,150);
if(obj_level_controller.room_state == GAME_STATE.INTRO) {
	if(direction > 91 and direction <= 270){ image_xscale = -2 }
	if(direction <= 90 or direction > 270 ) { image_xscale = 2 }
}
if(obj_level_controller.intro_complete or !object_exists(obj_intro_scene_wizard)) {
	instance_destroy(self);
}