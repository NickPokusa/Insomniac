//Only show resume button while paused
visible = global.paused;

// --- Hover Feedback ---
if (position_meeting(mouse_x, mouse_y, id)) {
	image_alpha = 1;
}
else {
	image_alpha = 0.7;
}