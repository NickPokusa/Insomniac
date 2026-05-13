//STOP LOGIC AFTER WIN
if (SleepMeterFillObj.game_won) exit;

//ONLY RUN WHEN LIGHT IS VISIBLE
if (!visible) exit;

//CHECK CURTAIN STATE
var curtain = instance_find(CurtainNight3Obj, 0);
if (curtain == noone) exit;

//only the fully open curtain creates enough light to defeat the shadow monster
if (curtain.curtain_state != 3) exit;

//CHECK SHADOW MONSTER COLLISION
var m = instance_place(x, y, ShadowMonsterNight3Obj);

//DEFEAT SHADOW MONSTER
if (m != noone && m.visible && !m.hit_by_light){
	m.hit_by_light = true;
	
	//trigger fade out and stop fade in
	m.fading_out = true;
	m.fading_in = false;
	
	//cancel fail timer
	m.alarm[1] = -1;
}