//WIN MESSAGE
//display temporary win text when the sleep meter reaches max
if (game_won){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "YOU WIN!");
}