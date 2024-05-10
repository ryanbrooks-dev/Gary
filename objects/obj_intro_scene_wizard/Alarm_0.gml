/// @description Insert description here
// You can write your code in this editor
if(dialogue_step < array_length(dialogue)) {
	debug_event("DIALOGUE STEP {0}",dialogue_step);
	dialogue_step++;
} else {
	obj_level_controller.room_state = GAME_STATE.TUTORIAL;
	obj_level_controller.intro_complete = true;
	instance_destroy(self);
}