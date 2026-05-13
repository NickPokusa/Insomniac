//CLICK TO ADVANCE STORY (TO MOVE FASTER THAN AUTO PLAY)
if (mouse_check_button_pressed(mb_left)) {
	if (state == "hold") {
		state = "fade_out";
	}
	else if (state == "fade_in") {
		alpha = 1;
		state = "hold";
		hold_timer = hold_time;
	}
}

//FADE IN
//Gradually increase alpha to make current slide appear
if (state == "fade_in"){
	alpha += fade_speed;
	
	//Once fully visible switch to hold state
	if (alpha >= 1){
		alpha = 1;
		state = "hold";
		
		//Set how long the slide stays on the screen
		hold_timer = hold_time;
	}
}

//HOLD
//Keep the slide fully visible for a set duration
else if (state == "hold"){
	hold_timer--;
	
	//When timer runs out, begin fading out
	if(hold_timer <= 0){
		state = "fade_out";
	}
}

//FADE OUT
//Gradually decrease alpha to make the slide disappear
else if (state == "fade_out"){
	alpha -= fade_speed;
	
	//Once fully invisible, move to next slide
	if (alpha <= 0){
		alpha = 0;
		current_slide++;
		
		//If all slides are finished, transition to gameplay
		if (current_slide >= array_length(slides)){
			current_slide = array_length(slides) -1;
			audio_stop_sound(snd_storm);
			start_transition(rm_night1);
		}
		else{
			//Otherwise, restart the cycle for the next slide
			state = "fade_in";
		}
	}
}
