/// @description Insert description here
// You can write your code in this editor
if(monsters > 0){
	// Every fifth wave a boss monster appears, the other times basic, fast and tanky are supposed to be mixed
	if(wave % 5 == 1 && wave != 1){
		monsters = 1;
		enemy = instance_create_layer(path_get_point_x(global.path,0),path_get_point_y(global.path,0),"Instances",obj_wizard_01);
	} else if(wave % 3 == 0 || wave == 1){
		enemy = instance_create_layer(path_get_point_x(global.path,0),path_get_point_y(global.path,0),"Instances",obj_wizard_01);
	} else if(wave % 3 == 1 || wave == 2){
		enemy = instance_create_layer(path_get_point_x(global.path,0),path_get_point_y(global.path,0),"Instances",obj_wizard_01);
	} else if(wave % 3 == 2 || wave == 3){
		enemy = instance_create_layer(path_get_point_x(global.path,0),path_get_point_y(global.path,0),"Instances",obj_wizard_01);
	} else {
		enemy = instance_create_layer(path_get_point_x(global.path,0),path_get_point_y(global.path,0),"Instances",obj_wizard_01);
	}
	
	// Make the spawned enemy follow the global.path
	with(enemy){
		path_start(global.path, spd, path_action_stop, true);
	}
	monsters -= 1;
	alarm[0] = delay; // Reset the spawn timer
}
