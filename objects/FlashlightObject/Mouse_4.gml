
flashlight_on = !flashlight_on;

var light = instance_find(FlashlightLightObj, 0);

show_debug_message("flashlight_on = " + string(flashlight_on));

if (light != noone){
	light.visible = flashlight_on;
	show_debug_message("light.visible set to " + string(light.visible));
}
else{
	show_debug_message("No light instance found");
}