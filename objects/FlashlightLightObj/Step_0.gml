//STOP LOGIC AFTER WIN
if (SleepMeterFillObj.game_won) exit;

//Only run when light is active
if (!visible) exit;

//Check for mirror monster collision
var m = instance_place(x, y, MirrorMonsterObj);

//Apply effect to monster
if (m != noone && m.visible && !m.hit_by_light){
	
	//prevent repeated triggers
	m.hit_by_light = true;
	
	//triger fade out after defeating monster
	m.fading_out = true;
	m.fading_in = false;
	
	//cancel fail timer so player does not lose
	m.alarm[1] = -1;
}