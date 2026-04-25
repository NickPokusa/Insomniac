// Fade in
if (fading_in) {
	image_alpha += fade_in_speed;
	if (image_alpha >= 1) {
		image_alpha = 1;
		fading_in = false;
	}
}

// Fade out
if (fading_out) {
	image_alpha -= fade_out_speed;

	if (image_alpha <= 0) {
		image_alpha = 0;
		fading_out = false;
		visible = false;
		hit_by_light = false;
		global.monster_active = false;
		
		var light = instance_find(LampLightObj, 0);
		if (light != noone){
			light.visible = false;
		}
		
		var lamp = instance_find(LampObj, 0);
		if (lamp != noone){
			lamp.lamp_on = false;

		// schedule next appearance
		alarm[0] = irandom_range(game_get_speed(gamespeed_fps) * 10, game_get_speed(gamespeed_fps) * 18);
		}
	
	}
}