/// @description Insert description here
// You can write your code in this editor
if(!place_meeting(x,y,obj_towers_parent) && !place_meeting(x,y,obj_prevent_tower_placement)){
	if(instance_exists(obj_level_controller)){
		if(cost <= obj_level_controller.money){
			obj_level_controller.money -= cost;
			instance_create_layer(x,y,"Instances",tower);
		} else {
			instance_destroy();
		}
	}
	instance_destroy();
}