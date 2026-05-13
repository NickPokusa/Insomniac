
if (!global.paused) exit;

//CLICK FEEDBACK
var s = audio_play_sound(snd_click, 1, false);
//voume control
audio_sound_gain(s, 0.2, 0);

//reset pause and audio
global.paused = false;
audio_stop_all();

//got to main menu
start_transition(rm_start);