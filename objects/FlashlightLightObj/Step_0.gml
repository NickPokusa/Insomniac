var m = instance_place(x, y, MirrorMonsterObj);

if (m != noone && m.visible){
	m.visible = false;
	m.alarm[1] = -1;
	m.alarm[0] = game_get_speed(gamespeed_fps) * 5;

}