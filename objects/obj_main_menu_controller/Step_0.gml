if (!instance_exists(obj_settings_controller)) {
	if (mouse_check_button_pressed(mb_left)) {
		var clicked = instance_position(mouse_x, mouse_y, obj_button_parent);
		if (clicked != noone) {
			switch (clicked.menu_option) {
				case "continue": load_game(); break;
				case "new game": create_new_game(); break;
				case "settings": instance_create_layer(0,0,"Settings", obj_settings_controller) break;
				case "exit": game_end(); break;
			}
		}
	}
}
