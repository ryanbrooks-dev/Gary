/// @description Insert description here
// You can write your code in this editor
if(room == rm_menu) {
	if(instance_exists(play_button_id)){
		if(obj_play_button.fetch_gary){
			if(self.x <= 325) self.x+=1;
			if(self.y >= 410) self.y-=2;
			if(self.x >= 325 and self.y <= 415) {
				self.sprite_index = spr_gary_forward_attack;
			}
			with(obj_main_menu_gary) {
				if(other.sprite_index == spr_gary_forward_attack) {
					if(attack_counter < 30) {
						attack_counter++;
					} else {
						other.sprite_index = spr_gary_backward_run;
						gary_come_back = true;
					}
				} else if(other.sprite_index == spr_gary_backward_run) {
					other.y+=3;
				}
			}
			if(gary_come_back){
				self.y +=3;
			}
		} 
	} else if (!obj_ui_text.is_gary_time) {
		self.x = start_dest2_x;
		self.y = start_dest2_y;
		self.speed = 0;
	}
	if(obj_ui_text.is_gary_time){
		if self.x > end_dest2_x {
			self.image_speed = 3;
			x = x-3;	
		} else if self.image_speed != 0 {
			self.speed = 0;
			self.image_speed = 0;
			self.image_index = 0;
			
		}
	}
	if(self.is_dazzle_time) {
		sprite_index = spr_gary_backward_fireworks;
		image_speed = 4;
	}
	if(self.is_dazzle_time and not layer_get_visible("gary_dazzle_layer")) {
		layer_set_visible("gary_dazzle_layer",true);
		layer_set_visible("gary_instance_layer",false);
	}
	
}