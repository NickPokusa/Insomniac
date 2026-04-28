//DRAW TRANSITION OVERLAY
//Draws a black rectangle over the entire screen to simulate fade-in
//and fade-out effects
draw_set_alpha(fade_alpha);
draw_set_color(c_black);

//Cover entire GUI area
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

//Reset alpha to avoid affecting other draw calls
draw_set_alpha(1);