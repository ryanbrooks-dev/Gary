/// @description Mouse button released, time to play
event_inherited();

if(obj_button.button_clicked == false) {
	self.phy_linear_velocity_y = -100;
	alarm[1]=30*3;
	obj_button.button_clicked = true;
	alarm[0] = 30*12;
}


