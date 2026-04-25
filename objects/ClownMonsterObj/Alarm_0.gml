if (SleepMeterFillObj.game_won) exit;

if (global.monster_active) {
	alarm[0] = irandom_range(game_get_speed(gamespeed_fps) * 5, game_get_speed(gamespeed_fps) * 10);
	exit;
}
visible = true;
image_alpha = 0;
fading_in = true;
fading_out = false;

global.monster_active = true;
SleepMeterFillObj.is_sleeping = false;

audio_play_sound(snd_hard_horror_hit_drum, 1, false);
alarm[1] = game_get_speed(gamespeed_fps) *10;