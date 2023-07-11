function array_greatest(array) {
	var bigshot = -infinity;
	var bigshotat = -1;
	var i;
	for (i=0; i<array_length(array); i++) {
		if bigshot < array[i] {
			bigshot = array[i];
			bigshotat = i;
		}
	}
	return bigshotat;
}