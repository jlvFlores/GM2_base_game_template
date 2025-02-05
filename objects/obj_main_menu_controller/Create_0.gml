var buttons = [];

if (global.has_save) {
	buttons = [obj_button_continue, obj_button_new_game, obj_button_settings, obj_button_exit];
} else {
	buttons = [obj_button_new_game, obj_button_settings, obj_button_exit];
}

var y_start = room_height / 1.5;
var y_step = 64;

for (var i = 0; i < array_length(buttons); i++) {
	instance_create_layer(room_width / 2, y_start + (i * y_step), "Instances", buttons[i]);
}
