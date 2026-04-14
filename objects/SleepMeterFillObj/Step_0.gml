if (is_sleeping && !game_won){
	sleep_meter += sleep_speed;
}

sleep_meter = clamp(sleep_meter, 0, sleep_meter_max);

image_xscale= start_xscale * (sleep_meter/sleep_meter_max);

if(sleep_meter >= sleep_meter_max){
	sleep_meter = sleep_meter_max;
	image_xscale = start_xscale;
	is_sleeping = false;
	game_won = true;
	
}

