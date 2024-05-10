/// @description Insert description here
// You can write your code in this editor
show_debug_message("CARDS TO DISPLAY IN ALARM 0: {0}",array_length(cards_to_deal));
var _length = array_length(cards_to_deal);
if(_length > 0) { 
	var _card = array_pop(cards_to_deal);
	var _gem_type = _card.gem_type;
	var _gems_available_for_card = gems_exist(_gem_type);
	
	try {
		if(_gems_available_for_card == false) {
			_card.gem_type = 0;
		} 
	}
	catch(_error){
		show_debug_message(_error);
		_card.gem_type = 0;
	}
	switch(_card.name) {
		case "range": {
			card_picked = instance_create_layer(room_width*((3-_length)/4),path_get_point_y(global.path_card,0),"Cards",obj_card_range);
			card_picked.card = _card
			card_picked.cost = _card.cost;
			card_picked.gem_type = _card._gem_type;
			card_picked.image_index = _card.gem_type;
			break;
		}
		case "speed": {
			card_picked = instance_create_layer(room_width*((3-_length)/4),path_get_point_y(global.path_card,0),"Cards",obj_card_speed);
			card_picked.card = _card
			card_picked.cost = _card.cost;
			card_picked.gem_type = _card._gem_type;
			card_picked.image_index = _card.gem_type;
			break;
		}
		case "trade": {
			card_picked = instance_create_layer(room_width*((3-_length)/4),path_get_point_y(global.path_card,0),"Cards",obj_card_trade);
			card_picked.card = _card
			card_picked.cost = _card.cost;
			card_picked.gem_type = _card._gem_type;
			card_picked.image_index = _card.gem_type;
			break;
		}
		case "minions": {
			card_picked = instance_create_layer(room_width*((3-_length)/4),path_get_point_y(global.path_card,0),"Cards",obj_card_minions);
			card_picked.card = _card
			card_picked.cost = _card.cost;
			card_picked.gem_type = _card._gem_type;
			card_picked.image_index = _card.gem_type;
			break;
		}
		case "miniboss": {
			card_picked = instance_create_layer(room_width*((3-_length)/4),path_get_point_y(global.path_card,0),"Cards",obj_card_miniboss);
			card_picked.card = _card
			card_picked.cost = _card.cost;
			card_picked.gem_type = _card._gem_type;
			card_picked.image_index = _card.gem_type;
			break;
		}
		case "upgrade": {
			card_picked = instance_create_layer(room_width*((3-_length)/4),path_get_point_y(global.path_card,0),"Cards",obj_card_upgrade);			
			card_picked.card = _card
			card_picked.cost = _card.cost;
			card_picked.gem_type = _card._gem_type;
			card_picked.image_index = _card.gem_type;
			break;
		}
		default:
	}
	array_push(cards_in_hand, _card);
	with(card_picked){
		path_start(global.path_card, 6, path_action_stop, false);
	}
	alarm[0] = delay;
}