//SLEEP PROGRESSION
//meter only fills while sleeping, before win, and when no monster is active
if (is_sleeping && !game_won && !global.monster_active){
	sleep_meter += sleep_speed;
}

//SLEEP SOUND CONTROL
//Start when sleeping
if (is_sleeping && sleep_snd == -1) {
	sleep_snd = audio_play_sound(snd_sleeping, 1, true);
	//volume control
	audio_sound_gain(sleep_snd, 0.2, 0);
}

//stop sound when not sleeping
if(!is_sleeping && sleep_snd != -1){
	audio_stop_sound(sleep_snd);
	sleep_snd = -1;
}

//keep meter within valid range
sleep_meter = clamp(sleep_meter, 0, sleep_meter_max);

//visually scale fill sprite based on progress
image_xscale= start_xscale * (sleep_meter/sleep_meter_max);

//WIN CONDITION
if(sleep_meter >= sleep_meter_max && !game_won){
	sleep_meter = sleep_meter_max;
	image_xscale = start_xscale;
	
	//stop sleeping and mark game as won
	is_sleeping = false;
	game_won = true;
	global.monster_active = false;
	
	//stop background music
	audio_stop_sound(ES_House_of_Horror___Experia);
	
	//stop sleep sound 
	if(sleep_snd != -1){
		audio_stop_sound(sleep_snd);
		sleep_snd = -1;
	}
	
	//RESET FLASHLIGHT
	var light =instance_find(FlashlightLightObj, 0);
	if (light != noone){
		light.visible = false;
	}
	
	var flash = instance_find(FlashlightObject, 0);
	if (flash != noone){
		flash.flashlight_on = false;
	}
	
	//RESET LAMP
	var lampLight = instance_find(LampLightObj, 0);
	if (lampLight != noone){
		lampLight.visible = false;
	}
	
	var lamp = instance_find(LampObj, 0);
	if(lamp != noone){
		lamp.lamp_on = false;
	}
	
	//RESET CURTAIN
	var curtainLight = instance_find(CurtainLightObj, 0);
	if(curtainLight != noone){
		curtainLight.visible = false;
	}
	
	var curtain = instance_find(CurtainObj, 0);
	if (curtain != noone){
		curtain.curtain_state = 0;
		curtain.sprite_index = CurtainClosed;
	}
}

