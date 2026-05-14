function Load_Game() 
{
	//Load game data
	ini_open("insomniac_save.ini");
	
	//Default value is 1 if no save exists
	global.highest_night = ini_read_real("SaveData", "highest_night", 1);
	
	ini_close();
}