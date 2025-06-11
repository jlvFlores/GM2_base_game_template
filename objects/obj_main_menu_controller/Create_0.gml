//main menu
var text_strings = [];

if (global.has_save) {
	text_strings = ["continue", "new game", "settings", "exit"];
} else {
	text_strings = ["new game", "settings", "exit"];
}

var y_start = room_height / 1.5;
var y_step = 64;

for (var i = 0; i < array_length(text_strings); i++) {
	create_button(room_width / 2, y_start + (i * y_step), "Instances", text_strings[i]);
}
