/// @description Initialize config data

if (!variable_global_exists("controls")) {
	global.controlKeys = ds_map_create();
	global.controls = ds_map_create();
	
	cfg_filename = "config.ini";
	ini_open(cfg_filename);
	
	scr_LoadControl("left", "A");
	scr_LoadControl("right", "D");
	scr_LoadControl("jump", "W");
	scr_LoadControl("change1", "1");
	scr_LoadControl("change2", "2");
	scr_LoadControl("change3", "3");
	scr_LoadControl("change4", "4");
	scr_LoadControl("attack", "I");
	scr_LoadControl("special1", "O");
	scr_LoadControl("special2", "P");
	
	ini_close();
}
