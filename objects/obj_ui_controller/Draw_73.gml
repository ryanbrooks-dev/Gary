if(obj_level_controller.room_state != GAME_STATE.INTRO) {
	set_tower_ui_font();
	if(instance_exists(obj_tower_parent)){
		with(obj_tower_parent){
			if(obj_tower_parent.selected){
				draw_sprite(sprite_index,0,other.x+64,other.y+64);
				draw_text(15,other.height/2+100,"Range: " + string(other.range));
				draw_text(15,other.height/2+115,"Damage: " + string(other.damage));
				draw_text(15,other.height/2+130,"Upgrade: " + string(other.upgradecost));
			}
		}
	}
	draw_text(gray_gem_x,gray_gem_y," = " + string(obj_money_controller.current_gems.gray));
	draw_text(gray_gem_x+(gem_offset),gray_gem_y," = " + string(obj_money_controller.current_gems.red));
	draw_text(gray_gem_x+(gem_offset*2),gray_gem_y," = " + string(obj_money_controller.current_gems.green));
	draw_text(gray_gem_x+(gem_offset*3),gray_gem_y," = " + string(obj_money_controller.current_gems.blue));
	reset_font();
	//draw_text(ui_width-128,ui_height-128,"Wave: " + string(obj_level_controller.wave));
	//draw_text(ui_width-128,ui_height-96,"Castle Durability: " + string(obj_level_controller.lives_remaining));
	set_small_centered_tower_ui_font();
	if(instance_exists(obj_start_wave_button)) {
		if(obj_start_wave_button.visible) {
		draw_text(obj_start_wave_button.x,obj_start_wave_button.y, "Start Wave");
		}
	}
	if(instance_exists(obj_discard_all_cards_button)) {
		if(obj_discard_all_cards_button.visible) {
		draw_text(obj_discard_all_cards_button.x,obj_discard_all_cards_button.y, "Discard All");
		}
	}
}