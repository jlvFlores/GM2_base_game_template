if (!instance_exists(obj_settings_controller)) {
	if (mouse_check_button_pressed(mb_left)) {
		var clicked = instance_position(mouse_x, mouse_y, obj_button);
		if (clicked != noone) {
			switch (clicked.text_str) {
				case "continue": load_game(); break;
				case "new game": create_new_game(); break;
				case "settings": create_settings(); break;
				case "exit": game_end(); break;
			}
		}
	}
}
