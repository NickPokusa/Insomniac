//Go to highest level saved
Load_Game();

//INITIALIZE GAME STATE
//reset win condition at the start of the game
SleepMeterFillObj.game_won = false;

//BACKGROUND MUSIC
//start looping background music
bgm = audio_play_sound(ES_House_of_Horror___Experia, 1, true);
//lower volume to avoid overpowering gameplay sound
audio_sound_gain(bgm, 0.1, 0);

//initializes global flag used to track if a monster is active
global.monster_active=false;

//PAUSE STATE
global.paused = false;