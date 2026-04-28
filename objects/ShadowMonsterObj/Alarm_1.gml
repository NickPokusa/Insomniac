//FAIL CONDITION
//triggered if player does not react in time

//set global to remember retry room 
global.retry_room = room;

//stop gameplay music
audio_stop_sound(ES_House_of_Horror___Experia);

//go to game over screen
start_transition(rm_lose);
