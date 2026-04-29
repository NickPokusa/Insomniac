// FADE IN
//gradually make the shadow monster visible when it spawns
if (fading_in) {
	image_alpha += fade_in_speed;

	if (image_alpha >= 1) {
		image_alpha = 1;
		fading_in = false;
	}
}

// FADE OUT
//triggered when the player fully opens the curtains and light hits the monster
if (fading_out) {
	image_alpha -= fade_out_speed;

	if (image_alpha <= 0) {
		image_alpha = 0;
		fading_out = false;
		
		//fully hide and reset monster state
		visible = false;
		hit_by_light = false;
		global.monster_active = false;

		//RESET CURTAIN STATE
		var light = instance_find(CurtainLightNight2Obj, 0);
		if (light != noone){
			light.visible = false;
		}

		//RESET CUTRAIN STATE
		var curtain = instance_find(CurtainNight2Obj, 0);
		if (curtain != noone){
			curtain.curtain_state = 0;
			curtain.sprite_index = CurtainClosed;
		}
		
		//RESPAWN TIMER
		//schedule next random appearance
		alarm[0] = irandom_range(game_get_speed(gamespeed_fps) * 8, game_get_speed(gamespeed_fps) * 15);
	}
}