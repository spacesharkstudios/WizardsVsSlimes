/// @description Initialize config data

if (!variable_global_exists("controls")) {
	global.controls = ds_map_create();

	cfg_filename = "config";
	ini_open(cfg_filename);

	ds_map_add(global.controls, "left", ini_read_string("Controls", "left", "A"));
	ds_map_add(global.controls, "right", ini_read_string("Controls", "right", "D"));
	ds_map_add(global.controls, "jump", ini_read_string("Controls", "jump", "W"));
	ds_map_add(global.controls, "change1", ini_read_string("Controls", "change1", "1"));
	ds_map_add(global.controls, "change2", ini_read_string("Controls", "change2", "2"));
	ds_map_add(global.controls, "change3", ini_read_string("Controls", "change3", "3"));
	ds_map_add(global.controls, "change4", ini_read_string("Controls", "change4", "4"));
	ds_map_add(global.controls, "attack", ini_read_string("Controls", "attack", "I"));
	ds_map_add(global.controls, "special1", ini_read_string("Controls", "special1", "O"));
	ds_map_add(global.controls, "special2", ini_read_string("Controls", "special2", "P"));

	ini_close();
}

