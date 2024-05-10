if(obj_card_hand_controller.state != CARD_HAND_STATES.PLAYER_TURN or !instance_exists(obj_card_parent)){
	visible = false;
} else {
	if(obj_card_parent.path_position != 1) {
		visible = false;	
	} else {
		visible	= true;
	}
}