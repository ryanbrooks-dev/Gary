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
function set_tower_ui_font() {
	draw_set_font(global.large_text_font);
	draw_set_color(global.c_my_offwhite);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

/// Set tower stage UI font
function set_rightpanel_tower_ui_font() {
	draw_set_font(global.large_text_font);
	draw_set_color(global.c_my_offwhite);
	draw_set_halign(fa_right);
	draw_set_valign(fa_top);
}

function set_small_centered_tower_ui_font() {
	draw_set_font(global.text_font);
	draw_set_color(global.c_my_offwhite);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
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

function scale_display() {
	var _bw = argument0;
	var _bh = argument1;
	var _cw = argument2;
	var _ch = argument3;
	var _center = argument4;
	var _aspect = (_bw / _bh);

	if ((_cw / _aspect) > _ch)
	    {
	    window_set_size((_ch *_aspect), _ch);
	    }
	else
	    {
	    window_set_size(_cw, (_cw / _aspect));
	    }
	if (_center)
	    {
	    window_center();
	    }

	surface_resize(application_surface, min(window_get_width(), _bw), min(window_get_height(), _bh));
}

function canvas_fullscreen() {
	var _base = argument0;
	var _bw = browser_width;
	var _bh = browser_height;

	view_wport[0] = _bw;
	view_hport[0] = _bh;
	window_set_size(_bw, _bh);
	window_center();

	var _aspect = (_bw / _bh);
	if (_aspect < 1)
	    {
	    var _vw = _base * _aspect;
	    var _vh = _base;
	    }
	else
	    {
	    var _vw = _base;
	    var _vh = _base / _aspect;
	    }

	camera_set_view_size(view_camera[0], _vw, _vh);
	surface_resize(application_surface, view_wport[0], view_hport[0]);
}