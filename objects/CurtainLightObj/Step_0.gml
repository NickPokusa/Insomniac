if (SleepMeterFillObj.game_won) exit;
if (!visible) exit;

var curtain = instance_find(CurtainObj, 0);
if (curtain == noone) exit;

if (curtain.curtain_state != 3) exit;

var m = instance_place(x, y, ShadowMonsterObj);

if (m != noone && m.visible && !m.hit_by_light){
	m.hit_by_light = true;
	m.fading_out = true;
	m.fading_in = false;
	m.alarm[1] = -1;
}