// Handle keyboard input for name
input_name = keyboard_string;

// Restrict the length of the input
if (string_length(input_name) > input_max_length) {
    input_name = string_copy(input_name, 1, input_max_length);
    keyboard_string = input_name; // Keep keyboard_string in sync
}

// Handle button click
if (mouse_check_button_pressed(mb_left)) {
    var clicked = instance_position(mouse_x, mouse_y, obj_button_parent);
    if (clicked != noone) {
        if (clicked.menu_option == "accept") {
			if (string_length(input_name) > 2) {
				// TODO create function in seperate script and call it to set default player values
				global.player_name = input_name;
				global.reputation = 0;
				global.currency = 1000;

                save_player_data(global.player_save_path);
                instance_destroy();
            } else {
                show_message("Name must be at least 3 characters long!");
            }
        }
    }
}
