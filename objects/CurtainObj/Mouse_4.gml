curtain_state += 1;

if (curtain_state >3){
	curtain_state = 0;
}

//Set curtain sprite
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

//update light
var light = instance_find(CurtainLightObj, 0);

if (light != noone){
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
				
		
			
	



