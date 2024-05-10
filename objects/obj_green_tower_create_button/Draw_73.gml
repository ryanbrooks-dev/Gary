/// @description Insert description here
// You can write your code in this editor

//// Inherit the parent event
//event_inherited();

var _sprite = self.currency;

var _budget = obj_money_controller.current_gems.green;
if(tower_cost > _budget) {
	draw_set_color(global.c_my_dark_gray);
	draw_set_alpha(0.7);
	draw_rectangle(x,y,x+64,y-65,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
}


set_tower_ui_font();
draw_text(x+16,y,string("= {0}x",tower_cost));
draw_sprite_ext(_sprite,-1,x+52,y+16,1,1,0,c_white,1);