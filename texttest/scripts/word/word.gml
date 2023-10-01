function word(str, wordnumber=0, startat=1, terminateapostrophe=false) {
	var i;
	var myword = "";
	var words = 0;
	var terminators = [" ", "-", ".", ",", "\"", "\\", "|", "/", "*", "!", "?", "(", ")", "[", "]", "{", "}", "`", "<", ">", ";", ":", "+", "=", "#"];
	if terminateapostrophe array_push(terminators, "'");
	for (i=startat; i<=string_length(str); i++) {
		if array_contains(terminators, string_char_at(str, i)) {
			if words == wordnumber && myword == "" continue;
		} else if words == wordnumber {
			myword += string_char_at(str, i);
		}
		if array_contains(terminators, string_char_at(str, i)) words++;
	}
	if myword == "" return -1 else return myword;
}

function nextspace(str, backward=false, startat=1, terminateapostrophe=false) {
	backward = -backward;
	var i;
	var terminators = [" ", "-", ".", ",", "\"", "\\", "|", "/", "*", "!", "?", "(", ")", "[", "]", "{", "}", "`", "<", ">", ";", ":", "+", "=", "#"];
	if terminateapostrophe array_push(terminators, "'");
	for (i=startat; i<=string_length(str) && i>0; i+=(backward ? -1 : 1)) {
		if i==startat continue;
		log(string_char_at(str, i));
		if array_contains(terminators, string_char_at(str, i)) {
			break;
		}
	}
	return i;
}