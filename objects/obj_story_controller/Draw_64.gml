//DRAW BACKGROUND
draw_sprite(StoryWinLoseBackground, 0, 0, 0);



//DRAW CURRENT STORY SLIDE
if (current_slide < array_length(slides)) {
	draw_set_alpha(alpha);
	draw_sprite(slides[current_slide], 0, 0, 0);
	draw_set_alpha(1);
}