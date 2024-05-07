depth = -y;
if(hp <= 0){
	instance_create_layer(x, y,"gems",death_token);
	instance_destroy(self);
}