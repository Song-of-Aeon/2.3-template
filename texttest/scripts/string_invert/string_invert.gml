function string_invert(str) {
	var sdrawkcab = "";
	var i;
	for (i=string_length(str); i>0; i--) {
		sdrawkcab += string_char_at(str, i);
	}
	return sdrawkcab;
}