//CLICK FEEDBACK
var s = audio_play_sound(snd_click, 1, false);
//voume control
audio_sound_gain(s, 0.2, 0);


//SEND PLAYER BACK TO CURRENT LEVEL TO RETRY
start_transition(global.retry_room);