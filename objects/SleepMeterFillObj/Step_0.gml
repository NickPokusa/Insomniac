if (is_sleeping && !game_won && !global.monster_active){
	sleep_meter += sleep_speed;
}

sleep_meter = clamp(sleep_meter, 0, sleep_meter_max);

image_xscale= start_xscale * (sleep_meter/sleep_meter_max);

if(sleep_meter >= sleep_meter_max && !game_won){
	sleep_meter = sleep_meter_max;
	image_xscale = start_xscale;
	is_sleeping = false;
	game_won = true;
	global.monster_active = false;
	
	audio_stop_sound(ES_House_of_Horror___Experia);
	
	var light =instance_find(FlashlightLightObj, 0);
	if (light != noone){
		light.visible = false;
	}
	
	var flash = instance_find(FlashlightObject, 0);
	if (flash != noone){
		flash.flashlight_on = false;
	}
}

