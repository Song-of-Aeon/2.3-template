function array_find_index(array, val, repititionof=1, startat=0) {
	var i;
	var amountof = 0;
	for (i=startat; i<array_length(array); i++) {
		if array[i] == val {
			amountof++;
			if amountof >= repititionof return i;
		}
	}
	return -1;
}