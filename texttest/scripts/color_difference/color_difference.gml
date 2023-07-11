function color_difference(color1, color2) {
	var r1, g1, b1, r2, g2, b2;
	r1 = color_get_red(color1);
	g1 = color_get_green(color1);
	b1 = color_get_blue(color1);
	r2 = color_get_red(color2);
	g2 = color_get_green(color2);
	b2 = color_get_blue(color2);
	return abs(r1-r2)+abs(g1-g2)+abs(b1-b2);
}