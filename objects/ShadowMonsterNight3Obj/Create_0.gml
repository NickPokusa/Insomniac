//VISUAL SETUP
//Make shadow monster darker so it blends with the environment
image_blend = make_color_rgb(10, 10, 20);

//start hidden and fully transparent( used for fade in)
visible = false;
image_alpha = 0;

//FADE STATE CONTROL
fading_in = false;
fading_out = false;

//control speed of fade transitions
fade_in_speed = 0.02;
fade_out_speed = 0.06;

//INTERACTION STATE
//tracks if the monster has already been affected by light
hit_by_light = false;

//SPAWN TIMING
//schedule first random appearance (8-15 seconds)
alarm[0] = irandom_range(game_get_speed(gamespeed_fps) * 8, game_get_speed(gamespeed_fps) * 15);

//disable fail timer until monster spawns
alarm[1] = -1;