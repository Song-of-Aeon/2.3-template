function format_time(seconds) {
	var time = "";
	second = floor(seconds%60);
	minute = floor(seconds/60)%60;
	hour = floor(seconds/60/60)%60;
	//day = ((seconds-minute-second)/60)%24;
	time = string(hour)+":"+string(minute)+":"+string(second);
	return time;
}