if(instance_exists(obj_gary)) {
	if(obj_gary.ready_in_position and instance_exists(obj_towers_parent)){
		with(obj_towers_parent){
			if(other.selected){
				draw_sprite(sprite_index,0,room_width-64,other.height/2+30);
				draw_text(15,other.height/2+100,"Range: " + string(other.range));
				draw_text(15,other.height/2+115,"Damage: " + string(other.damage));
				draw_text(15,other.height/2+130,"Upgrade: " + string(other.upgradecost));
			}
		}
	}
	if(obj_gary.ready_in_position and instance_exists(obj_level_controller)){
		draw_rectangle_color(0,ui_height-100,100,ui_height,global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,global.c_my_dark_gray,false);
		draw_text(10,ui_height-90,"Orbs: " + string(obj_level_controller.money));
		draw_text(10,ui_height-75,"Wave: " + string(obj_level_controller.wave));
		draw_text(10,ui_height-60, "Gary's Tower Health: " + string(obj_level_controller.lives_remaining));
	}
}