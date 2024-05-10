/// @description Insert description here
// You can write your code in this editor
end_dest1_x = obj_play_button.xstart+40;
end_dest1_y = obj_play_button.ystart-40;

enum GARY_STATES {
	AWAIT,
	ATTACK,
	RETURN,
	PAUSE,
	APPEAR,
	DAZZLE
}
gary_state = GARY_STATES.AWAIT;

start_dest2_x = 1300;
start_dest2_y = 61;
end_dest2_x = 951;
end_dest2_y = 61;

attack_counter = 0;