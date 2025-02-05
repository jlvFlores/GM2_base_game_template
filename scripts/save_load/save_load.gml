/// @desc Saves the player's data on the given save path
/// @param {string} player_save_path - The save path where the player's data will be stored.
function save_player_data(player_save_path) {
	var player_map = ds_map_create();
	ds_map_set(player_map, "player_name", global.player_name);
	ds_map_set(player_map, "reputation", global.reputation);
	ds_map_set(player_map, "currency", global.currency);

	var json_string = json_encode(player_map);

	var file = file_text_open_write(player_save_path);
	file_text_write_string(file, json_string);
	file_text_close(file);

	ds_map_destroy(player_map);
}

/// @desc Saves the settings set by the player.
function save_settings_data() {
	var settings_map = ds_map_create();
	ds_map_set(settings_map, "music_volume", global.music_volume);
	ds_map_set(settings_map, "sfx_volume", global.sfx_volume);

	var json_string = json_encode(settings_map);

	var file = file_text_open_write(global.settings_save_path);
	file_text_write_string(file, json_string);
	file_text_close(file);

	ds_map_destroy(settings_map);
}

/// @desc Loads a save file, based on the save's path
/// @param {string} player_save_path - The save path where the player's data is stored.
function load_player_data(player_save_path) {
	if (!file_exists(player_save_path)) {
		return;
	}

	var file = file_text_open_read(player_save_path);
	var json_string = file_text_read_string(file);
	file_text_close(file);

	var player_map = json_decode(json_string);

	if (player_map == undefined || ds_map_empty(player_map)) {
		show_message("Player save file corrupted!");
	} else {
		global.player_name = ds_map_find_value(player_map, "player_name");
		global.reputation = ds_map_find_value(player_map, "reputation");
		global.currency = ds_map_find_value(player_map, "currency");
	}

	ds_map_destroy(player_map);
}

/// @desc Loads the settings last set by the player.
function load_settings_data() {
	if (!file_exists(global.settings_save_path)) {
		// Set default values
		global.music_volume = 0.5;
		global.sfx_volume = 0.5;
		return;
	}

	var file = file_text_open_read(global.settings_save_path);
	var json_string = file_text_read_string(file);
	file_text_close(file);

	var settings_map = json_decode(json_string);

	if (settings_map == undefined || ds_map_empty(settings_map)) {
		show_message("Settings file corrupted!");
	} else {
		global.music_volume = ds_map_find_value(settings_map, "music_volume");
		global.sfx_volume = ds_map_find_value(settings_map, "sfx_volume");
	}

	ds_map_destroy(settings_map);
}

/// @desc Loads save state and goes to the hub.
function load_game() {
	load_player_data(global.player_save_path);
	room_goto(rm_hub);
}

/// @desc Deletes previous save and creates new game.
function create_new_game() {
	if (file_exists(global.player_save_path)) {
		file_delete(global.player_save_path);
	}

	global.has_save = false;
	room_goto(rm_cutscene);
}

/// @desc Resets settings data to default values.
function reset_settings_data() {
	global.music_volume = 0.5;
	global.sfx_volume = 0.5;

	save_settings_data();
}