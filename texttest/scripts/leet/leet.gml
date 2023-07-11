function leet(str, advanced=false) {
	str = string_upper(str);
	if advanced {
		str = string_replace_all(str, "A", "/-\\");
		str = string_replace_all(str, "B", "|3");
		str = string_replace_all(str, "C", "[");
		str = string_replace_all(str, "E", "3");
		str = string_replace_all(str, "G", "6");
		str = string_replace_all(str, "I", "1");
		str = string_replace_all(str, "L", "7");
		str = string_replace_all(str, "O", "()");
		str = string_replace_all(str, "S", "$");
		str = string_replace_all(str, "T", "7");
		str = string_replace_all(str, "Y", "`/");
		str = string_replace_all(str, "Z", "2");
		
		str = string_replace_all(str, "D", "|)");
		str = string_replace_all(str, "F", "|=");
		str = string_replace_all(str, "H", "|-|");
		str = string_replace_all(str, "J", "]");
		str = string_replace_all(str, "K", "|<");
		str = string_replace_all(str, "M", "|\/|");
		str = string_replace_all(str, "N", "|\|");
		str = string_replace_all(str, "P", "|^");
		str = string_replace_all(str, "Q", "0-");
		str = string_replace_all(str, "R", "|\\");
		str = string_replace_all(str, "U", "|_|");
		str = string_replace_all(str, "V", "\/");
		str = string_replace_all(str, "W", "|/\|");
		str = string_replace_all(str, "X", "><");
	} else {
		str = string_replace_all(str, "A", "4");
		str = string_replace_all(str, "B", "8");
		str = string_replace_all(str, "C", "(");
		str = string_replace_all(str, "E", "3");
		str = string_replace_all(str, "G", "6");
		str = string_replace_all(str, "I", "1");
		str = string_replace_all(str, "L", "7");
		str = string_replace_all(str, "O", "0");
		str = string_replace_all(str, "S", "5");
		str = string_replace_all(str, "T", "7");
		str = string_replace_all(str, "Y", "9");
		str = string_replace_all(str, "Z", "2");
	}
	return str;
}

function deleet(str, advanced=false) {
	str = string_upper(str);
	if advanced {
		str = string_replace_all_but_i_switched_the_arguments(str, "A", "/-\\");
		str = string_replace_all_but_i_switched_the_arguments(str, "B", "|3");
		str = string_replace_all_but_i_switched_the_arguments(str, "C", "[");
		str = string_replace_all_but_i_switched_the_arguments(str, "E", "3");
		str = string_replace_all_but_i_switched_the_arguments(str, "G", "6");
		str = string_replace_all_but_i_switched_the_arguments(str, "I", "1");
		str = string_replace_all_but_i_switched_the_arguments(str, "L", "7");
		str = string_replace_all_but_i_switched_the_arguments(str, "O", "()");
		str = string_replace_all_but_i_switched_the_arguments(str, "S", "$");
		str = string_replace_all_but_i_switched_the_arguments(str, "T", "7");
		str = string_replace_all_but_i_switched_the_arguments(str, "Y", "`/");
		str = string_replace_all_but_i_switched_the_arguments(str, "Z", "2");
		
		str = string_replace_all_but_i_switched_the_arguments(str, "D", "|)");
		str = string_replace_all_but_i_switched_the_arguments(str, "F", "|=");
		str = string_replace_all_but_i_switched_the_arguments(str, "H", "|-|");
		str = string_replace_all_but_i_switched_the_arguments(str, "J", "]");
		str = string_replace_all_but_i_switched_the_arguments(str, "K", "|<");
		str = string_replace_all_but_i_switched_the_arguments(str, "M", "|\/|");
		str = string_replace_all_but_i_switched_the_arguments(str, "N", "|\|");
		str = string_replace_all_but_i_switched_the_arguments(str, "P", "|^");
		str = string_replace_all_but_i_switched_the_arguments(str, "Q", "0-");
		str = string_replace_all_but_i_switched_the_arguments(str, "R", "|\\");
		str = string_replace_all_but_i_switched_the_arguments(str, "U", "|_|");
		str = string_replace_all_but_i_switched_the_arguments(str, "V", "\/");
		str = string_replace_all_but_i_switched_the_arguments(str, "W", "|/\|");
		str = string_replace_all_but_i_switched_the_arguments(str, "X", "><");
	} else {
		str = string_replace_all_but_i_switched_the_arguments(str, "A", "4");
		str = string_replace_all_but_i_switched_the_arguments(str, "B", "8");
		str = string_replace_all_but_i_switched_the_arguments(str, "C", "(");
		str = string_replace_all_but_i_switched_the_arguments(str, "E", "3");
		str = string_replace_all_but_i_switched_the_arguments(str, "G", "6");
		str = string_replace_all_but_i_switched_the_arguments(str, "I", "1");
		str = string_replace_all_but_i_switched_the_arguments(str, "L", "7");
		str = string_replace_all_but_i_switched_the_arguments(str, "O", "0");
		str = string_replace_all_but_i_switched_the_arguments(str, "S", "5");
		str = string_replace_all_but_i_switched_the_arguments(str, "T", "7");
		str = string_replace_all_but_i_switched_the_arguments(str, "Y", "9");
		str = string_replace_all_but_i_switched_the_arguments(str, "Z", "2");
	}
	return str;
}

function string_replace_all_but_i_switched_the_arguments(str, newstr, substr) {
	return string_replace_all(str, substr, newstr);
}

//spit leet("hi bread man");
