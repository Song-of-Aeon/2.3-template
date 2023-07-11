function music_set(music, face=MUSFACE.FRONT, swaptype=MUSSWAP.INSTANT, pitch=1, volume=1) {
	if music == global.playingmusic {
		global.playingmusictime = audio_sound_get_track_position(global.playingmusicdata);
		audio_stop_sound(global.playingmusicdata);
		global.playingmusicdata = audio_play_sound(music.audio[face], 0, true);
		audio_sound_pitch(global.playingmusicdata, pitch);
		audio_sound_gain(global.playingmusicdata, volume*global.music/100, 0);
		audio_sound_set_track_position(global.playingmusicdata, global.playingmusictime);
	} else {
		global.playingmusic = music;
		audio_stop_sound(global.playingmusicdata);
		global.playingmusicdata = audio_play_sound(music.audio[face], 0, true);
		audio_sound_pitch(global.playingmusicdata, pitch);
		audio_sound_gain(global.playingmusicdata, volume*global.music/100, 0);
	}
}

function volume_set(volume) {
	audio_sound_gain(global.playingmusicdata, volume, 0);
}

enum MUSSWAP {
	INSTANT,
	FADE,
	GLITCH,
}

enum MUSFACE {
	FRONT,
	BACK,
}