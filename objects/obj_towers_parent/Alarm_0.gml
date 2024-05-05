/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_enemies_parent)){ // To prevent errors
	enemy = instance_nearest(x,y,obj_enemies_parent);
	if(enemy != noone and !is_undefined(enemy)){ // To prevent even more errors (probably unnesessary)
		if(distance_to_point(enemy.x,enemy.y) < range){ // If enemy in Range
			// Create Projectile
			if(instance_exists(enemy)) {
				draw_line(x,y,enemy.x,enemy.y);
				//var _projectile = instance_create_layer(x+32,y+32,"Instances",obj_projectile);
				//_projectile.angle = point_direction(_projectile.x,projectile.y,enemy.x,enemy.y);
				//_projectile.damage = damage;
			}
		}
	}
}