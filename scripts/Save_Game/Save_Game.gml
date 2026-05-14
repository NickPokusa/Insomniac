function Save_Game() 
{
	//Save the game data
	ini_open("insomniac_save.ini");
	
	//Save highest unlocked night
	ini_write_real("SaveData", "highest_night", global.highest_night);
	
	ini_close();
}