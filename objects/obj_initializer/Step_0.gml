if (keyboard_check_pressed(vk_escape) && layer_exists("Settings")) {
    if (instance_exists(obj_settings_controller)) {
        with (obj_settings_controller) instance_destroy();
        //global.is_paused = false;
    } else {
        instance_create_layer(0, 0, "Settings", obj_settings_controller);
        //global.is_paused = true;
    }
}