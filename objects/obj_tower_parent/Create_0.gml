/// @description Insert description here
// You can write your code in this editor
depth = -y; // Simple form for some kind of "depth"
enemy = noone; // The enemy unit that is aimed at
range = 800; // Maximum range
frequency = 1; // shots/second
damage = 1;
cost = 0;
upgradecost = 5; // Cost to upgrade the tower
selected = false; // Is the tower selected?
attack_type = obj_gray_projectile;

enum TOWER_TYPES {
	GRAY,
	RED,
	GREEN,
	BLUE
}
// TODO: Left RELEASED to select, GLOBAL LEFT DOWN to deselect