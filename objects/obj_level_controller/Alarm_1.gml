/// @description Insert description here
// You can write your code in this editor
if(play_intro_scene and !instance_exists(obj_intro_scene_wizard)) {
		angry_wizard = instance_create_layer(path_get_point_x(pth_intro_scene,0),path_get_point_y(pth_intro_scene,0),"Instances_on_grass",obj_intro_scene_wizard);
}