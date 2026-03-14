with (Window_Phase3_obj){
	visible = false;
	audio_play_sound(snd_fast_blow, 1, false);
	alarm[3] = -1;
	alarm[2] = game_get_speed(gamespeed_fps)*20;
}