/// @description Insert description here
// You can write your code in this editor
if(!need_angry_wizard and !object_exists(obj_intro_scene_wizard)) {
	intro_complete = true;
	room_state = GAME_STATE.TUTORIAL;
}

if(intro_complete = false) {
	alarm[3] = 30*12;	
}