function array_compose(arrays) {
	var thearray = [];
	var i;
	for (i=0; i<argument_count; i++) {
		array_insert_array(thearray, argument[i], array_length(thearray));
	}
	return thearray;
}