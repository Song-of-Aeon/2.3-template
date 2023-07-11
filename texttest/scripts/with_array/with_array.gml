function with_array(objects, function_) {
	var j;
	for (j=0; j<array_length(objects); j++) {
		method(objects[j], function_)();
	}
}

#macro warray with_array