function word(str, wordnumber=0, terminateapostrophe=false) {
	var i;
	var myword = "";
	var words = 0;
	var terminators = [" ", "-", ".", ",", "\"", "\\", "|", "/", "*", "!", "?", "(", ")", "[", "]", "{", "}", "`", "<", ">", ";", ":", "+", "=", "#"];
	if terminateapostrophe array_push(terminators, "'")
	for (i=1; i<=string_length(str); i++) {
		if array_contains(terminators, string_char_at(str, i)) {
			if words == wordnumber && myword == "" continue;
		} else if words == wordnumber {
			myword += string_char_at(str, i);
		}
		if array_contains(terminators, string_char_at(str, i)) words++;
	}
	if myword == "" return -1 else return myword;
}