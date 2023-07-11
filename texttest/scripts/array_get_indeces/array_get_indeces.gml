function array_get_indeces(array) {
	var indeces = [];
	var i;
	for (i=0; i<array_length(array); i++) {
		if array[i] != 0 array_push(indeces, i);
	}
	return indeces;
}