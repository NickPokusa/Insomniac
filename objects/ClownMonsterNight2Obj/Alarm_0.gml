if (global.paused) {
	alarm[0] = 1;
	exit;
}

//Prevent spawn after winning
if (SleepMeterFillObj.game_won) exit;


//PREVENT OVERLAP MONSTERS
//If another monster is active, delay this spawn
if (global.monster_active) {
	alarm[0] = irandom_range(game_get_speed(gamespeed_fps) * 4, game_get_speed(gamespeed_fps) * 8);
	exit;
}

//ACTIVATE MONSTER


visible = true;
//start transparent for fade in
image_alpha = 0;
fading_in = true;
fading_out = false;

//mark monster as active so others cannot spawn
global.monster_active = true;

//stop player from progressing sleep while monster is present
SleepMeterFillObj.is_sleeping = false;

//Audio feedback
audio_play_sound(snd_hard_horror_hit_drum, 1, false);

//player has limited time to react before Game Over
alarm[1] = game_get_speed(gamespeed_fps) *8;