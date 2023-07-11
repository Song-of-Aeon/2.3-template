function instance_get_all(objindex) {
	var i;
	var dudes = [];
	for (i=0; i<instance_number(objindex); i++) {
		array_push(dudes, instance_find(objindex, i));
	}
	return dudes;
}