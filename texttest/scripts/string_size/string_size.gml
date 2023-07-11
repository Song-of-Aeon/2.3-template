function string_size(str, font=draw_get_font()) {
	if typeof(str) == "array" {
		str = str[global.lang];
	}
	var whatever = draw_get_font();
	var dude = new vec2();
	draw_set_font(font);
	dude.x = string_width(str);
	dude.y = string_height(str);
	draw_set_font(whatever);
	return dude;
}