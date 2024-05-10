/// @description Insert description here
// You can write your code in this edito
if(instance_exists(obj_level_controller)) {
	if(!start_moving_into_position and !ready_in_position) {
		counter++;
		if(counter >= 30*4) start_moving_into_position = true;
	} else if (start_moving_into_position and !ready_in_position) {
		debug_event("START MOVING INTO POSITION");
		if(!ready_in_position) {
			counter++;
			y = y-1;
			x = x-1;
			with(obj_gary) {
				if(other.x <= final_pos_x and other.y <= final_pos_y) {
					ready_in_position = true;	
				} else ready_in_position = false;
			}
		}
	}
	if(ready_in_position) {
		with(obj_gary) {
			other.image_speed = 0;
			other.image_index = 0;
		}
	}
} 

//else {
//	var _attacking = attack;
//	var _key_up = (keyboard_check(vk_up) or keyboard_check(ord("W")));
//	var _key_down = (keyboard_check(vk_down) or keyboard_check(ord("S")));
//	var _key_left = (keyboard_check(vk_left) or keyboard_check(ord("A")));
//	var _key_right = (keyboard_check(vk_right) or keyboard_check(ord("D")));
	
//	var _hmovedir = _key_right - _key_left;
//	var _vmovedir = _key_down - _key_up;

//	var _speed_modifier = movement_speed; // we don't want to change the value of movespeed

//	if (_hmovedir != 0 and _vmovedir != 0){ // if both aren't 0 you are moving diagonally
//	    _speed_modifier *= .707;
//	} else if (_hmovedir == 0 and _vmovedir == 0) {
		
//	}

//	// round to prevent moving a fraction of a pixel since that can cause sprites to be jittery
//	var _hsp = round(_hmovedir * _speed_modifier);
//	var _vsp = round(_vmovedir * _speed_modifier);
	
//	x += _hsp;
//	y += _vsp;
//}