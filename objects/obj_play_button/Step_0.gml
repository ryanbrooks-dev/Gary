/// @description Check if other button pressed, if so then destroy self
if(obj_button.button_clicked == true) {
	if(self.image_index == 0) {
		instance_destroy(self);
	}
}