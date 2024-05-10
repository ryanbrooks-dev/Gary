if(new_wave_arriving = true){
	new_wave_arriving = false;
	alarm[2] = 30;
	alarm[0] = delay;
}

// Game Over
if(lives_remaining <= 0){
	game_restart();
}

//check for intro completion
if(room_state == GAME_STATE.INTRO) {
	if(need_angry_wizard) {
		alarm[1] = 30;	
		need_angry_wizard = false;
	}
	alarm[3] = 30*12;
}

if(intro_complete and instance_exists(obj_intro_scene_follower)) {
	room_state = GAME_STATE.TUTORIAL;
	instance_destroy(obj_intro_scene_follower);
} else if(intro_complete and instance_exists(obj_intro_scene_wizard)) {
	room_state = GAME_STATE.TUTORIAL;
	instance_destroy(obj_intro_scene_wizard);
}

if(debug_state_change != room_state) {
	show_debug_message("Room state changed!");
	show_debug_message("New state: {0}",room_state);
	debug_state_change = room_state;
}

//if (browser_width != width || browser_height != height)
//{
//	width = min(base_width, browser_width);
//	height = min(base_height, browser_height);
//	scale_display(base_width, base_height, width, height, true);
//}