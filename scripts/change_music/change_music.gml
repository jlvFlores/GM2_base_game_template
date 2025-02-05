/// @desc Changes the music currently playing.
/// @param {sound} new_music - The sound asset to play as background music.
function change_music(new_music) {
	if (current_music != new_music) {
		if (current_music != noone) {
			audio_stop_sound(current_music);
		}
		
		if (new_music != noone) {
			audio_play_sound(new_music, 1, true);
		}
		
		current_music = new_music;
	}
}