//VISUAL SETUP

//darken clown so it fits the "lights out" environment
image_blend= make_color_rgb(80 ,80, 80);

//Clown hidden and fully transparent(used for fade-in)
visible = false;
image_alpha = 0;

//FADE STATE CONTROL

//Controls if the monster is fading in or out
fading_in = false;
fading_out = false;

//Controls speed of fade transtitions
fade_in_speed = 0.02;
fade_out_speed = 0.06;

//INTERACTION STATE

//Tracks if the clown has already been hit by light
hit_by_light = false;

//SPAWN TIMING

//Schedule first random appearance (12-20 seconds)
alarm[0] = irandom_range(game_get_speed(gamespeed_fps) *7, game_get_speed(gamespeed_fps) * 12);

//disable fail timer until monster actually spawns
alarm[1] = -1;
