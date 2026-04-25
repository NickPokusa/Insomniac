if(fading_in) {
	image_alpha += fade_in_speed;
	
	if (image_alpha >= 1){
		image_alpha = 1;
		fading_in = false;
	}
}

if (fading_out) {
	image_alpha -= fade_out_speed;
	
	if(image_alpha <= 0){
		image_alpha = 0;
		fading_out = false;
		visible = false;
		global.monster_active = false;
		hit_by_light = false;
		
		alarm[0] = irandom_range(game_get_speed(gamespeed_fps) * 10, game_get_speed(gamespeed_fps) * 18);
		
		var light = instance_find(FlashlightLightObj, 0);
		if (light != noone) {
			light.visible = false;
		}
		var flash = instance_find(FlashlightObject, 0);
		if (flash != noone){
			flash.flashlight_on = false;
		}
	}
	
}