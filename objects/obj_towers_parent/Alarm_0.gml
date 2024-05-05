/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_enemies_parent)){ // To prevent errors
	enemy = instance_nearest(x,y,obj_enemies_parent);
	if(enemy != noone and !is_undefined(enemy)){ // To prevent even more errors (probably unnesessary)
		if(distance_to_point(enemy.x,enemy.y) < range){ // If enemy in Range
			var _projectile = instance_create_layer(x,y,"Instances",attack_type);
			_projectile.angle = point_direction(_projectile.x,_projectile.y,enemy.x,enemy.y);
			_projectile.damage = damage;
		}
	}
}