//FADE IN
//gradually make mirror monster visible when it spawns
if(fading_in) {
	image_alpha += fade_in_speed;
	
	if (image_alpha >= 1){
		image_alpha = 1;
		fading_in = false;
	}
}

//FADE OUT
//triggered when the player successfully uses the flashlight
if (fading_out) {
	image_alpha -= fade_out_speed;
	
	if(image_alpha <= 0){
		image_alpha = 0;
		fading_out = false;
		
		//RESET MONSTER STATE
		//fully hide and reset monster state
		visible = false;
		global.monster_active = false;
		hit_by_light = false;
		
		//RESET FLASHLIGHT SYSTEM
		//turn off light effect  when the monster is defeated
		var light = instance_find(FlashlightLightObj, 0);
		if (light != noone) {
			light.visible = false;
		}
		
		//Reset flashlight toggle state
		var flash = instance_find(FlashlightObject, 0);
		if (flash != noone){
			flash.flashlight_on = false;
		}
		
		//RESPAWN TIMER
		//schedule next random appearance
		alarm[0] = irandom_range(game_get_speed(gamespeed_fps) * 8, game_get_speed(gamespeed_fps) * 15);
	}
	
}