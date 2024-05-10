// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

if(!variable_global_exists("path")) {
		global.path = pth_wizard_walk;
}

if(!variable_global_exists("path_card")) {
		global.path_card = pth_card_to_hand;
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
		show_debug_message("Starting wave!");
		obj_level_controller.number_of_enemies = 15 * obj_level_controller.difficulty; 
		show_debug_message("Sending {0} enemies", obj_level_controller.number_of_enemies);
		
		obj_level_controller.wave += 1;
		obj_level_controller.new_wave_arriving = true;
		show_debug_message("Attack started: {0}", obj_level_controller.new_wave_arriving);
	}
}

function noise() {
	//assuming noise(x,y,z) returns 0 to 1...
	//var _t = 0;
	//var _base_seed = random(100);


	//x += (noise(based_seed+t,based_seed,0)-.5) * 2;
	//y += (noise(based_seed,based_seed+t,0)-.5) * 2;
	//t+=.01;
	//or
	//x = (noise(based_seed+t,based_seed,0) *2-1) * room_width;
	//y = (noise(based_seed,based_seed+t,0) *2-1) * room_height;
	//t+=.01;
}