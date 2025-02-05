global.player_save_path = "player_save_data.json";
global.settings_save_path = "settings_save_data.json"
load_settings_data();

global.has_save = false;
if (file_exists(global.player_save_path)) {
	global.has_save = true;
}

instance_create_layer(0,0,"Instances", obj_main_menu_controller);
instance_create_layer(0,0,"Instances", obj_music_controller);
