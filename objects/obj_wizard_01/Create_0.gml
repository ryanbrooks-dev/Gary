/// @description Insert description here
// You can write your code in this editor
event_inherited();

show_debug_message("wizard_01 was created");

if(room == rm_towers and instance_exists(obj_level_controller)){
	hp = round(obj_level_controller.wave/2);
	mhp = hp;
}
spd = 4;
color = c_lime;