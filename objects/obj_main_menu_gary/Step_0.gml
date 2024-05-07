/// @description Insert description here
// You can write your code in this editor
if(global.play_game == true) {
	if(self.x >= end_dest1_x) self.x-=2;
	if(self.y >= end_dest1_y) self.y-=3;
	if(self.x <= end_dest1_x or self.y <= end_dest1_y) {
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
	if(gary_come_back) {
		self.y +=3;
		self.x += 4;
	}
} 
if (obj_menu_controller.is_prologue and self.fetch_gary = true) {
	self.fetch_gary = false;
	self.x = start_dest2_x;
	self.y = start_dest2_y;
	self.speed = 0;	
	
}
if(obj_menu_controller.is_gary_time){
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
if(self.is_dazzle_time){
	with(obj_main_menu_gary)
		 other.sprite_index = spr_gary_backward_fireworks;
}