///// @description Insert description here
//// You can write your code in this 

enum CARD_HAND_STATES {
	WAIT,
	INIT,
	DEALING,
	PLAYER_TURN,
	CARD_SELECTED,
	DISCARD
}

card = {
	name,
	cost,
	gem_type,
	priority,
}

state = CARD_HAND_STATES.WAIT;

card_picked = obj_card_parent;

new_card_round = true;
image_index_checked = false;
displaying_cards = false;
card = obj_card_parent;
max_cards_in_hand = 3;
cards_to_deal = [];
cards_in_hand = [];
debug_message_shown = false;
delay = 180;
