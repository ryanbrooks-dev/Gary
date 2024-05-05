/// @description Insert description here
// You can write your code in this editor
/// @description Draw Red if not buildable and draw range
if(instance_exists(obj_level_controller)){
	if((place_meeting(x,y,obj_towers_parent) || place_meeting(x,y,obj_prevent_tower_placement)) || (cost > obj_level_controller.money)){
	
		draw_set_color(c_red);
		draw_set_alpha(0.5);
	
		draw_rectangle(x-32,y-32,x+32,y+32,false);
	
		draw_set_alpha(1);
		draw_set_color(c_white);
	}
}

// Draw the Range
draw_set_alpha(0.4);
draw_circle(x,y,range,false);
draw_set_alpha(1);
draw_self();