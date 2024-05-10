if(obj_card_hand_controller.state != CARD_HAND_STATES.PLAYER_TURN or !instance_exists(obj_card_parent) or obj_level_controller.room_state == GAME_STATE.ATTACK_STARTED){
	visible = false;
} else if (obj_card_hand_controller.state == CARD_HAND_STATES.PLAYER_TURN or obj_card_hand_controller.state == CARD_HAND_STATES.CARD_SELECTED){
	visible	= true;
}