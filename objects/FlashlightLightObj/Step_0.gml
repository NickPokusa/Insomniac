if (SleepMeterFillObj.game_won) exit;
if (!visible) exit;

var m = instance_place(x, y, MirrorMonsterObj);

if (m != noone && m.visible && !m.hit_by_light){
	m.hit_by_light = true;
	m.fading_out = true;
	m.fading_in = false;
	m.alarm[1] = -1;
}