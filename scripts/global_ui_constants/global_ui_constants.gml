// OI, LISTEN HERE.
// ONLY ADD CONSTANTS TO THIS SCRIPT.
// IF IT'S EVER. EVER GOING TO BE UPDATED, LET THAT BE MANAGED BY THE OBJECT.
// BE SMART. 

/*
	FONTS
	Fonts from sprites:
		font_add_sprite(spr_HUD_Font, ord("!"), true, 2);
	Imported from .ttf:
		
*/
if !variable_global_exists("title_font") {
	global.title_font = fnt_title;
}
if !variable_global_exists("subtitle_font") {
	global.subtitle_font = fnt_subtitle;
}
if !variable_global_exists("prologue_font") {
	global.prologue_font = fnt_prologue;
}
if !variable_global_exists("dialogue_font") {
	global.dialogue_font = fnt_dialogue_text;
}
if !variable_global_exists("larger_text_font") {
	global.larger_text_font = fnt_prologue;
}
if !variable_global_exists("large_text_font") {
    global.large_text_font = fnt_ui_text;
}
if !variable_global_exists("text_font") {
    global.text_font = fnt_ui_text_small
}

/*
	COLOURS:
	exammple: font_add_sprite(spr_HUD_Font, ord("!"), true, 2);
*/
if !variable_global_exists("c_my_dark_red") {
    global.c_my_dark_red = make_color_rgb(180,82,82);
}
if !variable_global_exists("c_my_brown") {
    global.c_my_brown = make_color_rgb(123,73,58);
}
if !variable_global_exists("c_my_dark_gray") {
    global.c_my_dark_gray = make_color_rgb(33,33,35);
}
if !variable_global_exists("c_my_dark_purple") {
    global.c_my_dark_purple = make_color_rgb(53,43,66);
}
if !variable_global_exists("c_my_dark_blue") {
    global.c_my_dark_blue = make_color_rgb(58,56,88);
}
if !variable_global_exists("c_my_blue") {
    global.c_my_blue = make_color_rgb(75,128,202);
}
if !variable_global_exists("c_my_beige") {
    global.c_my_beige = make_color_rgb(237,200,196);
}
if !variable_global_exists("c_my_offwhite") {
    global.c_my_offwhite = make_color_rgb(242,240,229);
}
if !variable_global_exists("c_my_pale_yellow") {
    global.c_my_pale_yellow = make_color_rgb(237,225,158);
}
if !variable_global_exists("c_my_saturated_green") {
    global.c_my_saturated_green = make_color_rgb(138,176,96);
}
if !variable_global_exists("c_my_dark_green") {
    global.c_my_dark_green = make_color_rgb(45,51,42);
}