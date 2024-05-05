if(start){
	alarm[0] = delay;
	start = false;
}

// Game Over
if(lives_remaining <= 0){
	game_restart();
}
if(play_intro_scene and need_angry_wizard) {
	alarm[1] = 30;	
	need_angry_wizard = false;
}