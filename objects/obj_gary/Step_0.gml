/// @description Insert description here
// You can write your code in this edito
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