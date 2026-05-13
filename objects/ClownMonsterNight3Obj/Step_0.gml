//FADE IN
//Gradually make monster visible when it spawns
if (fading_in) {
	image_alpha += fade_in_speed;
	if (image_alpha >= 1) {
		image_alpha = 1;
		fading_in = false;
	}
}

//FADE OUT
//Triggered when player successfully uses the lamp
if (fading_out) {
	image_alpha -= fade_out_speed;

	if (image_alpha <= 0) {
		image_alpha = 0;
		fading_out = false;
		
		//fully hide and reset monster state
		visible = false;
		hit_by_light = false;
		global.monster_active = false;
		
		//RESET LAMP STATE
		//turn off the lamp light after monster is defeated
		var light = instance_find(LampLightNight3Obj, 0);
		if (light != noone){
			light.visible = false;
		}
		
		//Reset lamp toggle state
		var lamp = instance_find(LampNight3Obj, 0);
		if (lamp != noone){
			lamp.lamp_on = false;
		}
		
		//RESPAWN TIMER
		// schedule next random appearance
		alarm[0] = irandom_range(game_get_speed(gamespeed_fps) * 7, game_get_speed(gamespeed_fps) * 15);
	
	
	}
}