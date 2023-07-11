function ds_list_to_array(dslist) {
	var i;
	var array = [];
	for (i=0; i<ds_list_size(dslist); i++) {
		array[i] = dslist[|i];
	}
	return array;
}