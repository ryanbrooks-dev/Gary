if(instance_exists(obj_level_controller)){
	draw_text(120,100,"Monsters: " + string(obj_level_controller.monsters));
	draw_text(120,120,"Wave: " + string(obj_level_controller.wave));
	draw_text(120,140,"Start: " + string(obj_level_controller.start));
	draw_text(120,160,"Difficulty: " + string(obj_level_controller.difficulty));
	draw_text(120,180,"Delay: " + string(obj_level_controller.delay));
	draw_text(120,200,"Money: " + string(obj_level_controller.money));
}
if(instance_exists(obj_enemies_parent)){
	with(obj_enemies_parent){
		draw_text(x+40,y,"HP: " + string(hp));
		draw_text(x+40,y+20, "Spd: " + string(spd));
	}
}
if(instance_exists(obj_towers_parent)){
	with(obj_towers_parent){
		draw_text(x+50,y-20,"Enemy: " + string(enemy));
		draw_text(x+50,y,"Range: " + string(range));
		draw_text(x+50,y+20, "Frequency: " + string(frequency));
		draw_text(x+50,y+40, "Damage: " + string(damage));
		draw_text(x+50,y+60, "Selected: " + string(selected));
		draw_text(x+50,y+80, "Upgradecost: " + string(upgradecost));
	}
}