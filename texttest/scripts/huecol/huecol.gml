function huecol(hue, sat=255, val=255) {
	return make_color_hsv(cycle(hue, 256), cycle(sat, 256), cycle(val, 256));
}