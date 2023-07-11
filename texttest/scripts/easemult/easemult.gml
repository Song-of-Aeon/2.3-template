function easemult(animcurve, val, duration, multiplier, channel=0) {
	var dude = animcurve_get_channel(animcurve, channel);
	return animcurve_channel_evaluate(dude, (val/duration)%1)*multiplier;
}

//easemult(ac_sin, count, 200, 1000);
