/// @description Insert description here
// You can write your code in this editor
show_debug_message("SOUNDING ATTACK ALARM");
if(number_of_enemies > 0){
	obj_level_controller.room_state = GAME_STATE.ATTACK_STARTED;
	show_debug_message("SENDING {0} ENEMIES", number_of_enemies);
	if(number_of_enemies % 5 == 1 && wave != 1){
		//number_of_enemies = 1; // for miniboss
		show_debug_message("Creating instance of obj_wizard_01");
		enemy = instance_create_layer(path_get_point_x(global.path,0),path_get_point_y(global.path,0),"Instances",obj_wizard_01);
	} else if(number_of_enemies % 3 == 0){
		show_debug_message("Creating instance of obj_wizard_02");
		enemy = instance_create_layer(path_get_point_x(global.path,0),path_get_point_y(global.path,0),"Instances",obj_wizard_02);
	} else if(number_of_enemies % 3 == 1){
		show_debug_message("Creating instance of obj_wizard_03");
		enemy = instance_create_layer(path_get_point_x(global.path,0),path_get_point_y(global.path,0),"Instances",obj_wizard_03);
	} else if(number_of_enemies % 3 == 2){
		show_debug_message("Creating instance of obj_wizard_04");
		enemy = instance_create_layer(path_get_point_x(global.path,0),path_get_point_y(global.path,0),"Instances",obj_wizard_04);
	} else {
		show_debug_message("Creating instance of obj_wizard_01");
		enemy = instance_create_layer(path_get_point_x(global.path,0),path_get_point_y(global.path,0),"Instances",obj_wizard_01);
	}
	
	// Make the spawned enemy follow the global.path
	with(enemy){
		path_start(global.path, spd, path_action_stop, true);
	}
	number_of_enemies -= 1;
	alarm[0] = delay; // Reset the spawn timer
}
else {
	if(instance_number(obj_enemies_parent) <2 and room_state == GAME_STATE.ATTACK_STARTED) {
		room_state = GAME_STATE.PREPARING;
	}	
}