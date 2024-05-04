/// @description Insert description here
// You can write your code in this editor
if(obj_towers_gary.ready_in_position) {
	if(wiz_01_counter >= 30*5) {
		if(!instance_exists(obj_wizard_01)) {
		instance_create_layer(create_x,create_y,"instances_on_grass",obj_wizard_01);
		} else if(!obj_wizard_01.saturated) {
			instance_create_layer(create_x,create_y,"instances_on_grass",obj_wizard_01);
		}
		wiz_01_counter = 0;
	}
	wiz_01_counter++;
}