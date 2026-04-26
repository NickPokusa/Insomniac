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

//activate flashlight
flashlight_on = true;

//enable light
var light = instance_find(FlashlightLightObj, 0);


if (light != noone){
	light.visible = true;
}
