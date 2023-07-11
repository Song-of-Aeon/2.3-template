function string_extend_digits(str, integers, decimals=0) {
	var ints = 0;
	var decs = 0;
	if decimals decimals++;
	var i;
	for (i=0; i<string_length(str); i++) {
		if string_pos(".", str) <= i+1 && string_contains(str, ".") {
			decs++;
		} else if string_pos(".", str) > i+1 || !string_contains(str, ".") {
			ints++;
		}
	}
	integers -= ints;
	decimals -= decs;
	while integers {
		str = "0" + str;
		integers--;
	}
	while decimals {
		if !string_pos(".", str) {
			str = str + ".";
		}
		str = str + "0";
		decimals--;
	}
	return str;
}