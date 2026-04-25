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

		var light = instance_find(CurtainLightObj, 0);
		if (light != noone){
			light.visible = false;
		}

		var curtain = instance_find(CurtainObj, 0);
		if (curtain != noone){
			curtain.curtain_state = 0;
			curtain.sprite_index = CurtainClosed;
		}

		alarm[0] = irandom_range(game_get_speed(gamespeed_fps) * 10, game_get_speed(gamespeed_fps) * 18);
	}
}