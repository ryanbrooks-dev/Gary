/// @description Insert description here
// You can write your code in this editor
if(state == CARD_HAND_STATES.PLAYER_TURN and displaying_cards) {
	//show_debug_message("Skipping step for card hand controller");
}
else if(obj_level_controller.room_state == GAME_STATE.PREPARING or obj_level_controller.room_state == GAME_STATE.TUTORIAL) {
	//layer_set_visible("Cards",true);
	switch(state) {
		case CARD_HAND_STATES.WAIT: {
			state = CARD_HAND_STATES.INIT;
			break;
		}
		case CARD_HAND_STATES.INIT: {
			show_debug_message("current state = {0}", state);
			//layer_set_visible("Cards",true);
			// Skip dealing if already have enough cards
			if(array_length(cards_in_hand) >= max_cards_in_hand) {
				state = CARD_HAND_STATES.PLAYER_TURN;
			}
			// else, check that the deck still has enough cards to draw
			else if(array_length(obj_deck_controller.cards_in_deck) >= array_length(cards_in_hand) and state == CARD_HAND_STATES.INIT) {
				show_debug_message("Total cards in deck: {0}", array_length(obj_deck_controller.cards_in_deck));
				debug_message_shown = true;
				state = CARD_HAND_STATES.DEALING;
			}
		}
		case CARD_HAND_STATES.DEALING: {
			show_debug_message("current state = {0}", state);
			while(array_length(cards_to_deal) < max_cards_in_hand and array_length(obj_deck_controller.cards_in_deck) >= 1) {
				show_debug_message("PROCESS: DEALING A CARD - Total cards in hand: {0}", array_length(cards_to_deal));
				show_debug_message("PROCESS: DEALING A CARD - Total cards in deck: {0}", array_length(obj_deck_controller.cards_in_deck));
				show_debug_message("PROCESS: DEALING A CARD - Pulling card from deck...");
				var _card = array_pop(obj_deck_controller.cards_in_deck);
				show_debug_message("PROCESS: DEALING A CARD - Pushing card to hand...");
				array_push(cards_to_deal, _card);
				show_debug_message("PROCESS: DEALT A CARD - Total cards in hand: {0}", array_length(cards_to_deal));
				show_debug_message("PROCESS: DEALT A CARD - Total cards in deck: {0}", array_length(obj_deck_controller.cards_in_deck));
			}
			if(array_length(cards_to_deal) >= max_cards_in_hand or array_length(obj_deck_controller.cards_in_deck) < 1) {
				state = CARD_HAND_STATES.PLAYER_TURN;
				show_debug_message("First hand dealt.");
				//show_debug_message("Cards visible: {0}", layer_get_visible("Cards"));
				show_debug_message("Total cards in hand: {0}", array_length(cards_to_deal));
				show_debug_message("Total cards in deck: {0}", array_length(obj_deck_controller.cards_in_deck));
			}
		}
		case CARD_HAND_STATES.PLAYER_TURN: {
			//show_debug_message("current state = {0}", state);
			//if(displaying_cards == false) {
			//	alarm[0] = 30*4;
			//	show_debug_message("resetting alarm for card display");
			//	layer_set_visible("Cards", true);
			//	displaying_cards = true;
			//} else {
			//}
			//break;
		}
		case CARD_HAND_STATES.CARD_SELECTED: {
			show_debug_message("current state = {0}", state);
			break;
				
		}
		case CARD_HAND_STATES.DISCARD: {
			show_debug_message("current state = {0}", state);
			//displaying_cards = false;
			//layer_set_visible("Cards",false);
			break;
		}	
	}
}

if(state == CARD_HAND_STATES.PLAYER_TURN and displaying_cards == false) {
	alarm[0] = 60;
	show_debug_message("resetting alarm for card display");
	// layer_set_visible("Cards", true);
	displaying_cards = true;
} 

//// Card presentation logic 
//if(!image_index_checked) {
//	alarm[1] = 30;
//	image_index_checked = true;
//}