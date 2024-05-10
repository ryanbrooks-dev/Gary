/// @description Insert description here
// You can write your code in this editor
budget = obj_money_controller.current_gems.gray;
if(!instance_exists(obj_tower_parent) and !place_meeting(x,y,obj_prevent_tower_placement)) {
	if(instance_exists(obj_level_controller)){
		// TODO: Change this to gems 
		if(cost <= budget){
			obj_money_controller.current_gems.gray -= cost;
			instance_create_layer(x,y,"Instances",tower);
		} else {
			instance_destroy(self);
		}
	}
	instance_destroy(self);
} else if(!place_meeting(x,y,obj_tower_parent) && !place_meeting(x,y,obj_prevent_tower_placement)){
	if(instance_exists(obj_level_controller)){
		// TODO: Change this to gems 
		if(cost <= budget){
			obj_money_controller.current_gems.gray -= cost;
			instance_create_layer(x,y,"Instances",tower);
		} else {
			instance_destroy(self);
		}
	}
	instance_destroy(self);
}