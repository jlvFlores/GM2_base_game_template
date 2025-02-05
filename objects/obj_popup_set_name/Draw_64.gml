// Draw the semi-transparent background
draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

// Draw the popup sprite (centered)
draw_sprite_ext(spr_pop_up, 0, room_width / 2, room_height / 2, 10, 5, 0, c_white, 1);

// Draw the message text
draw_set_halign(fa_center); // Center-align the text
draw_set_color(c_white);
draw_text(room_width / 2, (room_height / 2) - 100, "Enter your name:");

// Draw the input field text
draw_set_color(c_black);
draw_text(room_width / 2, room_height / 2, input_name);

// Reset alignment
draw_set_halign(fa_left);
