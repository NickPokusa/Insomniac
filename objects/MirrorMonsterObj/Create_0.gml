if (SleepMeterFillObj.game_won) exit;

visible = false;
image_alpha = 0;

alarm[0] = irandom_range(game_get_speed(gamespeed_fps) * 4, game_get_speed(gamespeed_fps) * 8);
alarm[1] = -1;

hit_by_light = false;

fading_in = false;
fading_out = false;
fade_in_speed = 0.02;
fade_out_speed = 0.05;