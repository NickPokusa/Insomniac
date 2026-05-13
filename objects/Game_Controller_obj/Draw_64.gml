//DRAW PAUSE OVERLAY
if (global.paused) {
	//darken gameplay behind pause menu
	draw_set_alpha(0.65);
	draw_set_color(c_black);
	draw_rectangle(0, 0, display_get_gui_width(), display_get_height(), false);
	draw_set_alpha(1);
	
	//pause text
	draw_sprite(PauseTxt, 0, 0, 0);
}
	

	