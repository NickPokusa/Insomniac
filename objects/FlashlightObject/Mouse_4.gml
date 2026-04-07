light_on = !light_on;

if(light_on){
	instance_create_layer(x,y, "Instances", FlashlightLightObj);
}else{
	with(FlashlightLightObj){
		instance_destroy();
	}
}