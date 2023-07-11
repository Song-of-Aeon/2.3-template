function sm_parse(path) {
	var sm = file_text_open_read(path);
	if !sm return false;
	var offset = 0.2;
	var lanes = 4;
	var tempnotes = [];
	var guys = [[]];
	var myline;
	do myline = file_text_readln(sm) until string_contains(myline, "NOTES");
	repeat(5) file_text_readln(sm);
	
	var eye = 0;
	var jay = 1;
	do {
		myline = file_text_readln(sm);
		if string_contains(myline, ";") break;
		if string_contains(myline, ",") {
			jay = 1;
			eye++;
			continue;
		}
		if string_contains(myline, "/") continue;
		var mylane = 0;
		repeat(lanes) {
			guys[eye][jay-1] = real(string_copy(myline, mylane+1, 1));
			jay++;
			mylane++;
		}
	} until false;
	file_text_close(sm);
	
	var j, curbeat, beatdepth, thecolor, notedepth;
	iterate guys to {
		beatdepth = array_length(guys[i])/lanes;
		for (j=0; j<array_length(guys[i]); j++) {
			if guys[i][j] == 1 || guys[i][j] == 2 {
				curbeat = floor(j/lanes)/beatdepth+i;
				notedepth = floor(j/lanes)%(beatdepth/4);
				array_push(tempnotes, new note(beatcalc(curbeat, mysong.bpm)+offset, j%4, notedepth));
			}
		}
	}
	return tempnotes;
}

function beatcalc(beat, bpm=global.playingmusic.bpm) {
	return (beat*4)/(bpm/60);
}