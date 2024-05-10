/// @description Insert description here
// You can write your code in this editor
if(!obj_level_controller.room_state == GAME_STATE.INTRO) {
	if(!layer_get_visible("UI_Objects")) {
		layer_set_visible("UI_Objects",true);
		layer_set_visible("UI_Assets",true);
	}
} else {
	layer_set_visible("UI_Objects",false);
	layer_set_visible("UI_Assets",false);
}