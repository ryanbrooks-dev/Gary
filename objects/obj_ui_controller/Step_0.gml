/// @description Insert description here
// You can write your code in this editor
if(obj_gary.ready_in_position and !obj_level_controller.play_intro_scene) {
	if(!layer_get_visible("UI_Objects")) {
		layer_set_visible("UI_Objects",true);
	}
	//if(!layer_get_visible("Prevent_Placement")) {
	//	layer_set_visible("Prevent_Placement",true);
	//}
}