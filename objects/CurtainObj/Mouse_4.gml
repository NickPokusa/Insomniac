//INPUT HANDLING
//only allow curtain interaction while shadow monster is present
var shadow = instance_find(ShadowMonsterObj, 0);

if (shadow == noone || !shadow.visible || shadow.fading_out) {
	exit;
}

//CLICK FEEDBACK
var s = audio_play_sound(snd_click, 1, false);
//volume control
audio_sound_gain(s, 0.2, 0);

//ADVANCE CURTAIN STATE
//each click progresses the curtain toward fully open, then resets
curtain_state += 1;

if (curtain_state >3){
	curtain_state = 0;
}

//UPDATE CURTAIN VISUAL
switch (curtain_state){
	case 0: 
		sprite_index = CurtainClosed;
	break;
	
	case 1: 
		sprite_index = CurtainOpen1;
	break;
	
	case 2: 
		sprite_index = CurtainOpen2;
	break;
	
	case 3:
		sprite_index = CurtainOpen3;
	break;
}

//UPDATE LIGHT BASED ON CURTAIN STATE
var light = instance_find(CurtainLightObj, 0);

if (light != noone){
	//light only appears when curtain is at least partially open
	light.visible = (curtain_state > 0);
	
	if(light.visible){
		switch (curtain_state){
			case 1: 
				light.sprite_index = CurtainOpen1Light;
			break;
			
			case 2:
				light.sprite_index = CurtainOpen2Light;
			break;
			
			case 3:
				light.sprite_index = CurtainOpen3Light;
		}
	}
}
				
		
			
	



