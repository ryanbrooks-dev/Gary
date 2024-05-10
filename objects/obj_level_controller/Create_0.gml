/// @description Manage Towers level states

//base_width = room_width;
//base_height = room_height;
//width = base_width;
//height = base_height;

//base_size = 512;
//width = browser_width;
//height = browser_height;
//canvas_fullscreen(base_size);

enum GAME_STATE {
	INTRO,
	TUTORIAL,
	ATTACK_STARTED,
	PREPARING,
	OUTRO
}

debug_state_change = room_state;

 // SET DIRECTLY TO NEXT STATE FOR
// FASTER DEBUGGING
room_state = GAME_STATE.INTRO;
intro_complete = false;
debug_state_change = room_state;

new_wave_arriving = false;
difficulty = 1;
delay = 30*4;
number_of_enemies = 0;
wave = 0;
lives_remaining = 10;
enemy = obj_enemies_parent;
angry_wizard = obj_intro_scene_wizard;
need_angry_wizard = true;