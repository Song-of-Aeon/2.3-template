function array_include(array, value) {
	if !type_reference(value) {
		if !array_contains(array, value) {
			array_push(array, value);
			return true;
		} else return false;
	} else {
		var doit = true;
		iterate array to {
			if !deep_compare(array[i], value) {
				doit = false;
				break;
			}
		}
		if doit array_push(array, value);
		return doit;
	}
}

function array_exclude(array, value) {
	if !type_reference(value) {
		if array_contains(array, value) {
			array_remove(array, value);
			return true;
		} else return false;
	} else {
		var doit = false;
		iterate array to {
			if deep_compare(array[i], value) {
				array_delete(array, i, 1);
				i--;
				doit = true;
			}
		}
		return doit;
	}
}
