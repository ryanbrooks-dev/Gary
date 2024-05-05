/// @description Check if other button pressed, if so then destroy self
if(obj_menu_buttons_parent.button_clicked == true) {
	if(self.image_index == 0) {
		instance_destroy(self);
	}
}