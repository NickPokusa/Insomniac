//CLICK FEEDBACK
var s = audio_play_sound(snd_click, 1, false);
//voume control
audio_sound_gain(s, 0.2, 0);


//START GAME
//transistion from the main menu to the first level
room_goto(rm_night1);