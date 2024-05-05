if(start){
	alarm[0] = delay;
	start = false;
}

// Game Over
if(lives_remaining <= 0){
	game_restart();
}