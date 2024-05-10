/// @description Mouse button released, time to play
event_inherited();

obj_menu_controller.room_state = MENU_STATES.BUTTON_CLICKED;
//alarm[1]=30*3;
alarm[0] = 30*12;

