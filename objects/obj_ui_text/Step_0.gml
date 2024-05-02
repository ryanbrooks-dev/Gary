/// @description Insert description here
// You can write your code in this editor
if(room == rm_menu) {
	if(!is_title and !section_1_ready) {
		layer_destroy_instances("Temporary_Instances");
		alarm[0] = 30*8;
		section_1_ready = true;
		layer_set_visible("dim_title",true);
	
	}

	if(is_gary_time and !gary_is_here) {
		gary_is_here = true;
	}
	if(self.section_6_ready) {
		obj_main_menu_gary.is_dazzle_time = true;
	}
}