function song(name_="among us trap remix", shortname="autr", audio_=[m_null], bpm_=100, description_="when the im.ogg", map_="./maps/NOTHING.sm", loopstart=0, loopend=audio_sound_length(audio_[0])) constructor {
	name = name_;
	audio = audio_;
	bpm = bpm_;
	description = description_;
	map = map_;
	loopStart = loopstart;
	loopEnd = loopend;
	variable_struct_set(global.tracklist, shortname, self);
}