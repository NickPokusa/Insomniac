// --- Sleep Button Hover Logic ---

// Only allow highlight if player can actually use it
var can_use = !global.monster_active;

if (can_use && position_meeting(mouse_x, mouse_y, id)) {
	image_alpha = 1; // bright when usable + hovered
}
else if (can_use) {
	image_alpha = 0.85; // slightly dim but still available
}
else {
	image_alpha = 0.6; // clearly disabled
}