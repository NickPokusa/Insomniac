//SLEEP METER SETUP
//current progress toward winning the game
sleep_meter = 0;

//maximum value required to win
sleep_meter_max = 100;

//rate at which the meeter fills while sleeping
sleep_speed = 0.05;

//SLEEP STATE
//tracks whether the player is currently sleeping
is_sleeping = false;

//WIN STATE
//becomes true when the sleep meter reaches max
game_won = false;

//VISUAL SCALING
//store origional sprite scale for fill animation
start_xscale = image_xscale;