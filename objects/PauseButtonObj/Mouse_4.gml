//TOGGLE PAUSE
global.paused = !global.paused;

if (global.paused){
	audio_pause_all();
}
else{
	audio_resume_all();
}
	