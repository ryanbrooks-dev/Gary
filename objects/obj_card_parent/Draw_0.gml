/// @description Insert description here
// You can write your code in this editor
if(card_selected and have_budget) {
	pointerlength = point_distance(x, y, mouse_x, mouse_y);
	draw_sprite_stretched(spr_pointer,0,x,y, sprite_get_width(spr_pointer),pointerlength);
}



if(!have_budget) {
	draw_self();
	draw_set_color(global.c_my_dark_red);
	draw_set_alpha(0.5);
	draw_rectangle(x,y,x+160,y+225,false);
	draw_set_color(c_white);
	draw_set_alpha(1);
} else {
	draw_self();
}