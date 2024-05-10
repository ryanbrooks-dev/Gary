/// @description Insert description here
// You can write your code in this editor
enum GEM_TYPES {
	GRAY,
	RED,
	GREEN,
	BLUE
}

tower_costs ={
	gray: 3,
	red: 5,
	green: 5,
	blue: 8
}

current_gems = {
	gray: 0,
	red: 0,
	green: 0,
	blue: 0
}

/// @func gems_exist(_real)
/// Checks if card is playable, otherwise returns a gray version of same card
/// @arg {Real} _real - The gem type to check against
function gems_exist(_real) {
 var _result = false;
	switch(_real) {
		case 1:
			_result = (obj_money_controller.current_gems.red != 0);
			break;
		case 2:
			_result = (obj_money_controller.current_gems.green != 0);
			break;
		case 3: 
			_result = (obj_money_controller.current_gems.blue != 0);
			break;
		default: _result = true;
	}
	 return _result;
}

/// @func can_afford(_gem_type, _cost)
/// Checks if we can afford the card cost
/// @arg {Real} _gem_type - The gem type to check against
/// @arg {Real} _cost - The cost of the card in question
function can_afford(_gem_type, _cost){
	var _result = false;
	switch(_gem_type) {
		case 0:
			show_debug_message("Checking if we can afford card with {0} gray gems", _cost);
			_result = (obj_money_controller.current_gems.gray >= _cost);
			break;
		case 1:
			show_debug_message("Checking if we can afford card with {0} red gems", _cost);
			_result = (obj_money_controller.current_gems.red >= _cost);
			break;
		case 2:
			show_debug_message("Checking if we can afford card with {0} green gems", _cost);
			_result = (obj_money_controller.current_gems.green >= _cost);
			break;
		case 3: 
			show_debug_message("Checking if we can afford card with {0} blue gems", _cost);
			_result = (obj_money_controller.current_gems.blue >= _cost);
			break;
		default: _result = false;
	}
	show_debug_message("Verdict: {0}", _result);
	 return _result;
}