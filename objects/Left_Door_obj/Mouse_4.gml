with (Angel_Peek_obj){
	visible = false;
	audio_play_sound(snd_fast_blow, 1, false);
	alarm[1] = -1;
	alarm[0]=game_get_speed(gamespeed_fps)*5;
}