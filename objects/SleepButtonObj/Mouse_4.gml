if (global.paused) exit;

//INPUT HANDLING
//only allow sleeping if the game is not won and no monster is active
if (!SleepMeterFillObj.game_won && !global.monster_active){
	
	//CLICK FEEDBACK
	var s = audio_play_sound(snd_click, 1, false);
	//volume control
	audio_sound_gain(s, 0.2, 0);
	
	//TOGGLE SLEEP STATE
	//start or stop sleeping based on current state
	SleepMeterFillObj.is_sleeping = !SleepMeterFillObj.is_sleeping;
}