/// @description Insert description here
// You can write your code in this editor
// Check for enemies in Range
if(instance_exists(obj_enemies_parent)){
	// If not on cooldown, (re)start the alarm
	if(alarm[0] <= 0){
		alarm[0] = 1/frequency * 30;
	}
}