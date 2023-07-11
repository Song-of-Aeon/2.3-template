function array_remove(array, val) {
	var returnable = 0;
	var i;
	for (i=0; i<array_length(array); i++) {
		if array[i] == val {
			array_delete(array, i, 1);
			i--;
			returnable++;
		}
	}
	return returnable;
}