slider_music_x = 200;
slider_music_y = 150;
slider_sfx_x = 200;
slider_sfx_y = 200;
slider_width = 300;

slider_grabbed = -1;

var text_strings = ["reset", "back"];

var x_start = (room_width / 2) - 250;
var x_step = 500;

for (var i = 0; i < array_length(text_strings); i++) {
	create_button(x_start + (x_step * i) , room_height - 150, "Settings", text_strings[i]);
}