//TRANSITION LOGIC
//If transitioning to a new room, fade to black
if (transitioning) {
	//Increase fade alpha to darken screen
	fade_alpha += fade_speed;
	
	//Once screen is fully black, switch rooms
	if (fade_alpha >= 1){
		fade_alpha = 1;
		
		//Move to the target room
		room_goto(target_room);
	}
}

//If not transitioning fade back in(from black to visible)
else if (fade_alpha > 0) {
	
	//Decrease fade alpha to reveal screen
	fade_alpha -= fade_speed;
	
	if (fade_alpha < 0){
		fade_alpha = 0;
	}
}