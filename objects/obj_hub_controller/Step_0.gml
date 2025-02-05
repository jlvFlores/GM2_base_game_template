switch (hub_state) {
	case "main":
		if (mouse_check_button_pressed(mb_left)) {
			if (point_in_rectangle(mouse_x, mouse_y, 100, 100, 300, 150)) {
				hub_state = "character_cus"
			}
		}
}
