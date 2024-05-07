/* -------------------------- */
hp = 1;
mhp = hp;
spd = 1;
bleeding_colour = global.c_my_dark_red;
death_token = obj_gem_parent;
if(room == rm_towers){
	money = round(obj_level_controller.wave/2)+2; // Improvised formula for money reward
} else {
	money = 0;
}