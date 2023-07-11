function array_front(array, val) {
	var returnable = false;
	var test;
	var i;
	for (i=0; i<array_length(array); i++) {
		if array[i] == val {
			test = array[i];
			array_delete(array, i, 1);
			array_insert(array, 0, test);
			returnable = true;
		}
	}
	/*do {
		test = [];
		array_copy(test, 0, array, movedcount, array_length(array)-movedcount);
	} until !array_contains(test, val);*/
	return returnable;
}