//CLICK FEEDBACK
var s = audio_play_sound(snd_click, 1, false);
//voume control
audio_sound_gain(s, 0.2, 0);


//START OR CONTINUE GAME

//First time playing or has not passed night one
if (global.highest_night == 1){
	global.next_room = rm_night1;
	start_transition(rm_story);
}
//Continue from saved unlocked night
else if (global.highest_night == 2){
	start_transition(rm_night2);
}
else {
	start_transition(rm_night3);
}