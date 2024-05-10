/// @description Insert description here
// You can write your code in this editor

have_budget = can_afford(gem_type,cost);

if(!have_budget) {
	if(image_number > 0) {
		gem_type = image_index;
	}
	alarm[0] = 60*3;
}