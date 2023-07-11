function load_tevents(str, textbox, teventarray=tevents) {
	var i;
	var amount = 0;
	for (i=1; i<=string_length(str); i++) {
		if string_char_at(str, i) == "|" {
			amount++;
			theffect = global.texteffects[$string_char_at(str, i+1)];
			var args = string_copy(str, i+2, theffect.arglength);
			teventarray[i] = new tevent(method(textbox, theffect.event), theffect.textmod, args);
			log(args);
			str = string_delete(str, i, theffect.arglength+2);
			i--;
		}
	}
	log(amount);
	return str;
}