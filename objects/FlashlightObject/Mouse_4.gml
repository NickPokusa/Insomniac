if (global.paused) exit;

//INPUT HANDLING
//only allow flashlight use when the mirror monster is present
var mirror = instance_find(MirrorMonsterObj, 0);

if (mirror == noone || !mirror.visible || mirror.fading_out){
	exit;
}

// prevent repeated activation
if (flashlight_on){
	exit;
}

//CLICK FEEDBACK
var s = audio_play_sound(snd_click, 1, false);
//volume control
audio_sound_gain(s, 0.2, 0);

//activate flashlight
flashlight_on = true;

//enable light
var light = instance_find(FlashlightLightObj, 0);


if (light != noone){
	light.visible = true;
}
