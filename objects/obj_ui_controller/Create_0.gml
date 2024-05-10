/// @description (Mostly) scoped to text or rectangle draws to GUI
ui_height = room_height;
ui_width = room_width;
ui_start_x = ui_width-171;
obj_start_x = ui_width-72;
obj_height = ui_height;
y_pad = 48;

gray_gem_x = 750;
gray_gem_y = 8;
gem_offset = 80;


prevent_placement = instance_create_layer(obj_start_x-32,0,"Prevent_Placement",obj_hacky_ui_fix);
prevent_placement.image_xscale = obj_start_x;
prevent_placement.image_yscale = obj_height;

layer_set_visible("Prevent_Placement",false);
layer_set_visible("UI_Objects",false);
layer_set_visible("UI_Assets",false);
instance_create_layer(obj_start_x,ui_height-256-(y_pad*4),"UI_Objects", obj_gray_tower_create_button);
instance_create_layer(obj_start_x,ui_height-192-(y_pad*3), "UI_Objects", obj_red_tower_create_button);
instance_create_layer(obj_start_x,ui_height-128-(y_pad*2), "UI_Objects", obj_green_tower_create_button);
instance_create_layer(obj_start_x,ui_height-64-y_pad,"UI_Objects", obj_blue_tower_create_button);
instance_create_layer(obj_start_x-64,obj_height-32, "UI_Objects", obj_start_wave_button);
instance_create_layer(obj_start_x-128,obj_height-128, "UI_Objects", obj_discard_all_cards_button);