//BACKGROUND MUSIC
//start menu/stroy music only if its not already playing
if (!audio_is_playing(snd_storm)) {
	menu_story_bgm = audio_play_sound(snd_storm, 1, true);
	audio_sound_gain(menu_story_bgm, 0.15, 0);
}