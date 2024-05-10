/// @description Insert description here
// You can write your code in this editor
if(obj_menu_controller.room_state == MENU_STATES.BUTTON_CLICKED) {
	gary_state = GARY_STATES.ATTACK;
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
				other.sprite_index = spr_gary_right_run;
				gary_state = GARY_STATES.RETURN;
			}
		}
	}
	if(gary_state = GARY_STATES.RETURN) {
		self.x += 6;
		self.image_xscale = 4;
	}
} else if(obj_menu_controller.room_state == MENU_STATES.PROLOGUE) {
	gary_state = GARY_STATES.PAUSE;
	self.x = start_dest2_x;
	self.y = start_dest2_y;
	self.speed = 0;
}
if(gary_state == GARY_STATES.APPEAR){
	if self.x > end_dest2_x {
		self.image_speed = 3;
		x = x-3;	
	} else if self.image_speed != 0 {
		self.speed = 0;
		self.image_speed = 0;
		self.image_index = 0;
			
	}
	if(gary_state == GARY_STATES.DAZZLE) {
	sprite_index = spr_gary_backward_fireworks;
	image_speed = 1;
	}
}
