/// @description Insert description here
// You can write your code in this editor
if(position_meeting(x,y,obj_gem_parent)){
	speed = 0.5;
	move_and_collide(x,y,[obj_enemies_parent,obj_gem_parent],15,0,0,64,64);
} else speed = 0;