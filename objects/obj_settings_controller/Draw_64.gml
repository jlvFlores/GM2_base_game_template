depth = -190;
draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(0,0, room_width, room_height, false);
draw_set_alpha(1);

draw_set_color(c_white);
draw_text(room_width  / 2, 50, "Settings");

draw_text(slider_music_x - 100, slider_music_y, "Music Volume");
draw_rectangle(slider_music_x, slider_music_y - 5, slider_music_x + slider_width, slider_music_y + 5, false);
draw_rectangle(slider_music_x + global.music_volume * slider_width - 5, slider_music_y - 10, slider_music_x + global.music_volume * slider_width + 5, slider_music_y + 10, true);

draw_text(slider_sfx_x - 100, slider_sfx_y, "SFX Volume");
draw_rectangle(slider_sfx_x, slider_sfx_y - 5, slider_sfx_x + slider_width, slider_sfx_y + 5, false);
draw_rectangle(slider_sfx_x + global.sfx_volume * slider_width - 5, slider_sfx_y - 10, slider_sfx_x + global.sfx_volume * slider_width + 5, slider_sfx_y + 10, true);