if (SleepMeterFillObj.game_won) exit;

visible = false;
global.monster_active = false;
hit_by_light = false;
var light = instance_find(FlashlightLightObj, 0);
if (light != noone){
	light.visible = false;
}

var flash = instance_find(FlashlightObject, 0);
if (flash != noone){
	flash.flashlight_on = false;
}