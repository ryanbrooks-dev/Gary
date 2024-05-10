if(instance_exists(obj_level_controller)){
	draw_text(120,100,"Enemies: " + string(obj_level_controller.number_of_enemies));
	draw_text(120,120,"Wave: " + string(obj_level_controller.wave));
	draw_text(120,140,"Start: " + (string((obj_level_controller.room_state == GAME_STATE.ATTACK_STARTED) ? "true" : "false")));
	draw_text(120,160,"Difficulty: " + string(obj_level_controller.difficulty));
	draw_text(120,180,"Delay: " + string(obj_level_controller.delay));
}
if(instance_exists(obj_enemies_parent)){
	with(obj_enemies_parent){
		draw_text(x+40,y,"HP: " + string(hp));
		draw_text(x+40,y+20, "Spd: " + string(spd));
	}
}
if(instance_exists(obj_tower_parent)){
	with(obj_tower_parent){
		draw_text(x+50,y-20,"Enemy: " + string(enemy));
		draw_text(x+50,y,"Range: " + string(range));
		draw_text(x+50,y+20, "Frequency: " + string(frequency));
		draw_text(x+50,y+40, "Damage: " + string(damage));
		draw_text(x+50,y+60, "Selected: " + string(selected));
		draw_text(x+50,y+80, "Upgradecost: " + string(upgradecost));
	}
}