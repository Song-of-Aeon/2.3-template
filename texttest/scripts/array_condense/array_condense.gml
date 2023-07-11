function array_collapse(array) {
	var dude = array_get_indeces(array);
	var returning = [];
	var i;
	iterate dude to {
		returning[i] = array[dude[i]];
	}
	return returning;
}