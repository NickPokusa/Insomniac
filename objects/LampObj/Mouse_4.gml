
lamp_on = !lamp_on;

var light = instance_find(LampLightObj, 0);


if (light != noone){
	light.visible = lamp_on;
	show_debug_message("light.visible set to " + string(light.visible));
}
else{
	show_debug_message("No light instance found");
}