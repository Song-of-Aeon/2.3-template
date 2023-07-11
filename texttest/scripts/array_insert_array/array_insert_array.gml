function array_insert_array(targetarray, insertarray, index) {
	var i;
	for (i=0; i<array_length(insertarray); i++) {
		array_insert(targetarray, index+i, insertarray[i]);
	}
}

function array_insert_array_parse(array) {
	var i;
	for(i=0; i<array_length(array); i++) {
		if typeof(array[i]) == "array" {
			var dude = array[i];
			array_insert_array(array, dude, i);
			array_remove(array, dude)
		}
	}
	return array;
}