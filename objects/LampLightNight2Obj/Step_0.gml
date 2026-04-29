//Ignore input after win
if (SleepMeterFillObj.game_won) exit;

//Only run when the light is on
if (!visible) exit;

//CHECK FOR MONSTER COLLISION
//detect if the lamp light is overlapping the clown monster
var m = instance_place(x, y, ClownMonsterNight2Obj);

//Apply effect to monster
if (m != noone && m.visible && !m.hit_by_light){
	//mark monster as already affected to prevent repeated triggers
	m.hit_by_light = true;
	//trigger fade out sequence (defeating the monster)
	m.fading_out = true;
	m.fading_in = false;
	
	//Cancel fail timer so player does not lose
	m.alarm[1] = -1;
}