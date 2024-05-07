/// Set title font
function set_title_font() {
	draw_set_font(global.title_font);
	draw_set_color(global.c_my_dark_red);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
}

/// Set subtitle font
function set_subtitle_font() {
	draw_set_font(global.subtitle_font);
	draw_set_color(global.c_my_offwhite);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
}

/// Set prologue font
function set_prologue_font() {
	draw_set_font(global.prologue_font);
	draw_set_color(global.c_my_offwhite);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

/// Set tower stage UI font
function set_tower_announcement_ui_font() {
	draw_set_font(global.larger_text_font);
	draw_set_color(global.c_my_offwhite);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
}

/// Set tower stage UI font
function set_tower_ui_font() {
	draw_set_font(global.larger_text_font);
	draw_set_color(global.c_my_offwhite);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
function set_dialogue_font() {
	draw_set_font(global.dialogue_font);
	draw_set_color(global.c_my_offwhite);
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
}


function reset_font() {
	draw_set_font(global.text_font);
	draw_set_color(global.c_my_offwhite);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

if !variable_global_exists("play_game") {
    global.play_game = false;
}