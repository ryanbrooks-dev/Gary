/// @description Insert description here
// You can write your code in this editor
/// @description Draw Red if not buildable and draw range

budget = obj_money_controller.current_gems.gray;
if(instance_exists(obj_level_controller)){
	if(instance_exists(obj_tower_parent)){
		if((place_meeting(x,y,obj_tower_parent) || place_meeting(x,y,obj_prevent_tower_placement)) || (cost > budget)){
	
			draw_set_color(global.c_my_dark_red);
			draw_set_alpha(0.5);
	
			draw_rectangle(x-32,y-32,x+32,y+32,false);
	
			draw_set_alpha(1);
			draw_set_color(c_white);
		}
	} else {
		if(place_meeting(x,y,obj_prevent_tower_placement)) || (cost > budget){
	
			draw_set_color(global.c_my_dark_red);
			draw_set_alpha(0.5);
	
			draw_rectangle(x-32,y-32,x+32,y+32,false);
	
			draw_set_alpha(1);
			draw_set_color(c_white);
		}
	}
}

// Draw the Range
draw_set_alpha(0.2);
draw_circle(x,y,range,false);
draw_set_alpha(0.7);
draw_self();
draw_set_alpha(1);