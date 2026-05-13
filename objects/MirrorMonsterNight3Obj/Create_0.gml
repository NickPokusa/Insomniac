//INITIAL VISUAL STATE
//start hidden and fully transparent (used for fade in)
visible = false;
image_alpha = 0;

//FADE STATE CONTROL
fading_in = false;
fading_out = false;

//control speed of fade transitions
fade_in_speed = 0.02;
fade_out_speed = 0.05;

//INTERACTION STATE
//tracks if the monster has already been affected by light
hit_by_light = false;



//SPAWN TIMING
//schedule first random appearance (4-10 seconds)
alarm[0] = irandom_range(game_get_speed(gamespeed_fps) * 4, game_get_speed(gamespeed_fps) * 10);

//disable fail timer until monster spawns
alarm[1] = -1;