/// @description (Mostly) scoped to text or rectangle draws to GUI
ui_height = room_height;
ui_width = room_width;
ui_start_x = ui_width-171;
obj_start_x = ui_width-96;
obj_height = ui_height;


prevent_placement = instance_create_layer(obj_start_x-32,0,"Prevent_Placement",obj_hacky_ui_fix);
prevent_placement.image_xscale = obj_start_x;
prevent_placement.image_yscale = obj_height;

layer_set_visible("Prevent_Placement",false);
layer_set_visible("UI_Objects",false);
instance_create_layer(obj_start_x,96,"UI_Objects", obj_gray_tower_create_button);
instance_create_layer(obj_start_x,192,"UI_Objects", obj_blue_tower_create_button);
instance_create_layer(obj_start_x,288, "UI_Objects", obj_red_tower_create_button);
instance_create_layer(obj_start_x,384, "UI_Objects", obj_green_tower_create_button);
instance_create_layer(obj_start_x,obj_height-32, "UI_Objects", obj_start_wave_button);

////instance_create_layer(128,672, "UI_Objects", btn_start_wave);