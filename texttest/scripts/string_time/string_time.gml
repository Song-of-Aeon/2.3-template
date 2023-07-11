function string_time(seconds) {
	var minutes = floor(seconds/60)%60;
	var hours = floor(seconds/60/60)%24;
	var days = floor(seconds/60/60/24);
	seconds = string_format(seconds%60, 2, 2);
	minutes = string_format(minutes, 2, 0);
	hours = string_format(hours, 2, 0);
	days = string_format(days, 2, 0);
	var whatever = string_replace_all(days+":"+hours+":"+minutes+":"+seconds, " ", "0");
	return whatever;
}