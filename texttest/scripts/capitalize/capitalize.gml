function capitalize(str) {
	var terminators = [".", "!", "?", "#"]; //make sure ... does not terminate
	var loaded = true;
	var newstr = "";
	read str out {
		var char = string_char_at(str, i);
		if loaded && (char != string_upper(char) || char != string_lower(char)) {
			char = string_upper(char);
			loaded = false;
		}
		if array_contains(terminators, char) {
			loaded = true;
		}
		if char == "i" {
			if (i == 1 || string_char_at(str, i-1) == " ") && string_char_at(str, i+1) == " " {
				char = string_upper(char);
			}
		}
		if char == "\n" {
			if string_copy(str, i-3, 3) == "..." {
				loaded = true;
			}
		}
		newstr += char;
	}
	return newstr;
}