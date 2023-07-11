function rescale(instance, scale) {
	//log(instance);
	instance.image_xscale = scale;
	instance.image_yscale = scale;
	instance.scale = scale;
	setUpBBOX(instance);
	//log(image_xscale);
	//audio_sound_pitch(instance.gravity_direction, 1/scale);
}