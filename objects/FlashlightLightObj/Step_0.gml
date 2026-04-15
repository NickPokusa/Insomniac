if (SleepMeterFillObj.game_won) exit;
if (!visible) exit;

var m = instance_place(x, y, MirrorMonsterObj);

if (m != noone && m.visible && !m.hit_by_light){
	m.hit_by_light = true;
	m.alarm[1] = -1;
	m.alarm[2] = game_get_speed(gamespeed_fps) * 2;
	m.alarm[0] = game_get_speed(gamespeed_fps) * 5;


	show_debug_message("monster hit by flashlight");
}