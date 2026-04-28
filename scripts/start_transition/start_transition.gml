//START TRASITION FUNCTION
//Initiates fade transistion to a new room. Allows for smooth room transitions

function start_transition(_room) {
	//Access the transition controller object
	with (obj_transition){
		//Set target room to transition to
		target_room = _room;
		//begin transition process
		transitioning = true;
	}
}