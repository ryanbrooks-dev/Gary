/* -------------------------- */
hp = 1;
mhp = hp;
spd = 1;
color = c_red; // The color of the blood
if(room == rm_towers){
	money = round(obj_level_controller.wave/2)+2; // Improvised formula for money reward
} else {
	money = 0;
}