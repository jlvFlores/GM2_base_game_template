
if (mouse_check_button_pressed(mb_left)) {
	if (point_in_rectangle(mouse_x, mouse_y, slider_music_x, slider_music_y - 10, slider_music_x + slider_width, slider_music_y + 10)) {
		slider_grabbed = 0; // Music slider
	} else if (point_in_rectangle(mouse_x, mouse_y, slider_sfx_x, slider_sfx_y - 10, slider_sfx_x + slider_width, slider_sfx_y + 10)) {
		slider_grabbed = 1; // SFX slider
	}
}

if (slider_grabbed != -1 && mouse_check_button(mb_left)) {
	var new_value = clamp((mouse_x - slider_music_x) / slider_width, 0 , 1);
	
	if (slider_grabbed == 0) {
		global.music_volume = new_value;
	}
	if (slider_grabbed == 1) {
		global.sfx_volume = new_value;
	}
}

if (mouse_check_button_released(mb_left)) {
	slider_grabbed = -1;
}

if (mouse_check_button_pressed(mb_left)) {
	var clicked = instance_position(mouse_x, mouse_y, obj_button_parent);
	if (clicked != noone) {
		switch (clicked.menu_option) {
			case "reset": reset_settings_data(); break;
			case "back": instance_destroy(); break;
		}
	}
}
