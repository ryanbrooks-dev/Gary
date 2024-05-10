/// @description Insert description here
// You can write your code in this editor

/// @struct card
/// @arg {String} name - The gem type to check against
/// @arg {Real} cost - The cost of the card in question
/// @arg {Real} gem_type - The gem type
card = {
	name,
	cost,
	gem_type
}

pointerlength = sprite_get_height(spr_pointer);
card_selected = false;
have_budget = false;
checked_budget = false;

name = "undefined"
cost = 0;
gem_type = 0;
tower_id = 0;
card_selected = false;
spd = 4;

image_xscale = 0.5;
image_yscale = 0.5;

alarm[0] = 60*2;