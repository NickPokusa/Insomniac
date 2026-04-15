if (SleepMeterFillObj.game_won) exit;

visible = false;
alarm[0] = irandom_range(game_get_speed(gamespeed_fps) * 4, game_get_speed(gamespeed_fps) * 8);
alarm[1] = -1;
hit_by_light = false;