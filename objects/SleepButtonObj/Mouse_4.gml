//INPUT HANDLING
//only allow sleeping if the game is not won and no monster is active
if (!SleepMeterFillObj.game_won && !global.monster_active){
	
	//TOGGLE SLEEP STATE
	//start or stop sleeping based on current state
	SleepMeterFillObj.is_sleeping = !SleepMeterFillObj.is_sleeping;
}