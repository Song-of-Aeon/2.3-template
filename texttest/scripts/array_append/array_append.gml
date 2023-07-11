function array_append(array1, array2) {
	var i;
	for (i=0; i<array_length(array2); i++) {
		array_push(array1, array2[i]);
	}
}