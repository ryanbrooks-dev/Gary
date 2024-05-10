depth = -y;
if(hp <= 0){
	instance_create_layer(x, y,"gems",death_token);
	instance_destroy(self);
}

if(x < prev_x) {
	self.image_xscale = -1;
	prev_x = x;
}
else if (x > prev_x) {
	self.image_xscale = 1;
	prev_x = x;
}
