/// @description Insert description here
// You can write your code in this editor
if(!is_title and latest_section == -1) {
	layer_destroy_instances("Temporary_Instances")
	is_prologue = true;
	latest_section = 0;
	alarm[0] = 30*14;
	var _skip_button = instance_create_layer(room_width-256,room_height - 128,"UI_Instance",obj_skip_button);
	_skip_button.image_xscale = 0.5;
	_skip_button.image_yscale = 0.5;
} else if (is_prologue) {
	if(skip_ahead == true) {
		skip_ahead = false;
		if(latest_section < array_length(prologue_array)-1) {
			latest_section +=1	
		} else {
			room_goto_next();	
		}
	}
	
	if(latest_section == 2) is_gary_time = true;
	if(latest_section == array_length(prologue_array)-1) obj_main_menu_gary.is_dazzle_time = true;
	if(alarm[0] == -1) {
		alarm[0] = 30 *14;	
	}
}