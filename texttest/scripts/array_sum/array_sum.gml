function array_sum(array) {
	var i;
	var result = 0;
	for (i=0; i<array_length(array); i++) {
		result += array[i];
	}
	return result;
}

function array_biggest(array) {
	var i, otherresult, biggest;
	var result = -infinity;
	for (i=0; i<array_length(array); i++) {
		otherresult = result;
		result = max(result, array[i]);
		if result != otherresult biggest = i;
	}
	return biggest;
}

function array_smallest(array) {
	var i, otherresult, smallest;
	var result = infinity;
	for (i=0; i<array_length(array); i++) {
		otherresult = result;
		result = min(result, array[i]);
		if result != otherresult smallest = i;
	}
	return smallest;
}