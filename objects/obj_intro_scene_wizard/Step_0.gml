/// @description Insert description here
// You can write your code in this editor
if(obj_level_controller.play_intro_scene) {
	if(initial_delay == 0){
		if(alarm[0] <= 0){
			alarm[0] = dialogue_delay * 30;
		}
		if(direction > 91 and direction <= 270){ image_xscale = 2 }
		if(direction <= 90 or direction > 270 ) { image_xscale = -2 }
	} else {
		initial_delay --;	
	}
}