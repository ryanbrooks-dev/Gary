/// @description Insert description here
// You can write your code in this editor
if(selected){
	draw_set_alpha(0.4);
	draw_rectangle(x-32,y+32,x+32,y-32,false);
	draw_circle(x,y,range,false);
	draw_set_alpha(1);
}

draw_self();