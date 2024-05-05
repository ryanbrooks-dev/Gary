if(instance_exists(obj_level_controller)){
	// Only make the button visible if there is no ongoing wave
	if(obj_level_controller.start == false and obj_level_controller.monsters > 0){
		visible = false;
	} else {
		visible = true;
	}
}