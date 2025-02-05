switch (room) {
	case rm_main_menu:
		change_music(sound_main_menu);
		break;
	case rm_cutscene:
		change_music(sound_cutscene_default);
		break;
	case rm_hub:
		change_music(sound_hero_base);
		break;
	default:
		change_music(sound_main_menu);
		break;
}

audio_sound_gain(current_music, global.music_volume, 0);
// TODO add implementation for multiple sfx
audio_sound_gain(sound_button_click, global.sfx_volume, 0);
