function array_contains(array, val) {
	var i;
	for (i=0; i<array_length(array); i++) {
		if array[i] == val {
			return true;
		}
	}
	return false;
}

function array_contains_string(array, val) {
	var i;
	for (i=0; i<array_length(array); i++) {
		if string_contains(array[i], val) {
			return true;
		}
	}
	return false;
}

function array_contains_property(array, val) {
	var i, j;
	var names = [];
	for (i=0; i<array_length(array); i++) {
		names = variable_struct_get_names(array[i]);
		for (j=0; j<array_length(names); j++) {
			if array[i][$names[j]] == val {
				return true;
			}
		}
	}
	return false;
}