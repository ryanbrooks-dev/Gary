/// @description Insert description here
// You can write your code in this editor
//max_enemies_on_screen = 20;
//create_x = 32;
//create_y = -32;

//wiz_01_counter = 0;


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