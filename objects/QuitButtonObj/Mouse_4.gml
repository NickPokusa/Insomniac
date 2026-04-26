//CLICK FEEDBACK
var s = audio_play_sound(snd_click, 1, false);
//voume control
audio_sound_gain(s, 0.2, 0);

//DELAY EXIT
//delay exit so click sound will play
alarm[0] = 10;