//only work while paused
if (!global.paused) exit;

//CLICK FEEDBACK
var s = audio_play_sound(snd_click, 1, false);
//voume control
audio_sound_gain(s, 0.2, 0);

//Resume game
global.paused = false;
audio_resume_all();