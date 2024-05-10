/// @description Insert description here
// You can write your code in this editor
/*
	WAIT,
	INIT,
	DEALING,
	PLAYER_TURN,
	CARD_SELECTED,
	DISCARD

*/
set_tower_ui_font();
var _level_state = "";
switch(obj_level_controller.room_state) {
	case 0: 
		_level_state = "INTRO"; break;
	case 1:	
		_level_state = "TUTORIAL"; break;
	case 2:	
		_level_state = "ATTACK_STARTED"; break;
	case 3:	
		_level_state = "PREPARING"; break;
	case 4:	
		_level_state = "OUTRO"; break;
}
draw_text(x+32,y+32, string("Current level state: {0}", _level_state));

var _card_state = "";
switch(obj_card_hand_controller.state) {
	case 0: 
		_card_state = "WAIT"; break;
	case 1:	
		_card_state = "INIT"; break;
	case 2:	
		_card_state = "DEALING"; break;
	case 3:	
		_card_state = "PLAYER_TURN"; break;
	case 4:	
		_card_state = "CARD_SELECTED"; break;
	case 5:
		_card_state = "DISCARD"; break;
}
draw_text(x+32,y+72, string("Current card state: {0}", _card_state));