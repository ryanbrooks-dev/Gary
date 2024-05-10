/// @description Insert description here
// You can write your code in this editor
if(room_state == GAME_STATE.INTRO){
	if(!instance_exists(obj_intro_scene_wizard) and !intro_complete) {
		angry_wizard = instance_create_layer(path_get_point_x(pth_intro_scene,0),path_get_point_y(pth_intro_scene,0),"Instances_on_grass",obj_intro_scene_wizard);
	} if(!instance_exists(obj_intro_scene_follower) or instance_number(obj_intro_scene_follower) < 5){
		angry_wizard = instance_create_layer(obj_intro_scene_wizard.x,obj_intro_scene_wizard.y,"Instances_on_grass",obj_intro_scene_follower);
	}
	
}
if(instance_exists(obj_intro_scene_wizard) or instance_exists(obj_intro_scene_follower)) {
	if(instance_number(obj_intro_scene_follower) > 4) {
		alarm[1] = -1;
	} else {
		alarm[1] = 30*3;
	}
}