/// @description Insert description here
// You can write your code in this editor
if(instance_number(obj_enemies_parent) < 2 and room_state == GAME_STATE.ATTACK_STARTED) {
	room_state = GAME_STATE.PREPARING;
} else {
	alarm[2] = 60*5;
}