if (global.paused) {
	alarm[0] = 1;
	exit;
}

//PREVENT SPAWN AFTER WIN
if (SleepMeterFillObj.game_won) exit;



//ACTIVATE SHADOW MONSTER
visible = true;
//start transparent for fade in
image_alpha = 0;
fading_in = true;
fading_out = false;
hit_by_light = false;

//mark monster as active so others cannot spawn
global.monster_active = true;

//stop sleep progression while monster is present
SleepMeterFillObj.is_sleeping = false;

//AUDIO FEEDBACK
audio_play_sound(snd_hard_horror_hit_drum, 1, false);

//FAIL TIMER
//player must fully open curtain before the time runs out
alarm[1] = game_get_speed(gamespeed_fps) * 8;