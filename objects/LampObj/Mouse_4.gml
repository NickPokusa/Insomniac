//INPUT HANDLING
//only allow lamp use when clown is present
var clown = instance_find(ClownMonsterObj, 0);

if (clown == noone || !clown.visible || clown.fading_out){
	exit;
}

//prevent repeated clicks while lamp is already on 
if (lamp_on) {
	exit;
}

//Activate lamp
lamp_on = true;

//Find light object
var light = instance_find(LampLightObj, 0);

//ENABLE LIGHT EFFECT
//make the light visible so it can interact with the clown monster
if (light != noone){
	light.visible = true;
}
