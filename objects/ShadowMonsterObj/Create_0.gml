//Make shadow monster darker
image_blend = make_color_rgb(10, 10, 20);

visible = false;

image_alpha = 0;

fading_in = false;

fading_out = false;

fade_in_speed = 0.02;

fade_out_speed = 0.06;

hit_by_light = false;

alarm[0] = irandom_range(game_get_speed(gamespeed_fps) * 10, game_get_speed(gamespeed_fps) * 18);

alarm[1] = -1;