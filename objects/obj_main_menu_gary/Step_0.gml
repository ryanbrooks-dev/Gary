/// @description Insert description here
// You can write your code in this editor
if(room == rm_menu) {
	if obj_ui_text.is_gary_time {
		if x != title_dest_x {
			x = x-1;	
		} else if self.image_speed != 0 {
			speed = 0;
			self.image_speed = 0;
			self.image_index = 0;
			
		}
	}
	if(self.is_dazzle_time and not layer_get_visible("gary_dazzle_layer")) {
		layer_set_visible("gary_dazzle_layer",true);
		layer_set_visible("gary_instance_layer",false);
	}
}