if (SleepMeterFillObj.game_won) exit;

visible = true;
global.monster_active = true;
SleepMeterFillObj.is_sleeping = false;
audio_play_sound(snd_hard_horror_hit_drum, 1, false);
alarm[1] = game_get_speed(gamespeed_fps) *10;
