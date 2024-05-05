// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
if(!variable_global_exists("path")) {
	global.path = pth_wizard_walk
}

function scr_upgrade_tower(argument0) {

	with(argument0){
		range = round(range * 1.1);
		frequency += 0.3;
		damage += 1;
		upgradecost *= 2;
	}
}

function start_wave() {

	if(instance_exists(obj_level_controller)){
		obj_level_controller.monsters = 15*obj_level_controller.difficulty;
		obj_level_controller.start = true;
		obj_level_controller.wave += 1;
	//} else {
	//	return 0;
	//}
	}
}
