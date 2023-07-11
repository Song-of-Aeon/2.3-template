/*function array_create_depth(size, depth, value=0) {
	var i;
	var deepness = 0;
	var array = [];
	var arrayref = array;
	for (i=0; i<depth; i++) {
		for (j=0; j<size; j++) {
			arrayref[j] = []
		}
		arrayref
	}
	
	array
	return array;
}*/

function array_generate_2d(length, depth, value) {
	var i;
	var array = [];
	for (i=0; i<length; i++) {
		array[i] = array_create(depth, value);
	}
	return array;
}
/*function array_generate(size, depth) {
	var i;
	var array = [];
	for (i=0; i<length; i++) {
		array[i] = array_create(depth, value);
	}
	return array;
}*/