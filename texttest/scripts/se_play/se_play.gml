function se_play(soundeffect, pitch=1, volume=1, pitchvariation=0) {
	//return;  ///this shit dont work 
	pitch += random(pitchvariation*2)-pitchvariation;
	if(!audio_exists(soundeffect))
		return noone;
	var beep = audio_play_sound(soundeffect, 0, false);
	audio_sound_pitch(beep, pitch);
	if(!audio_exists(beep))
		return noone;
	audio_sound_gain(beep, volume*global.volume/100, 0);
	return beep;
}