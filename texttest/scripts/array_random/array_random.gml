function array_random(array, randfunc=(get_value(self, "seed") != undefined ? seed.next : irandom)) {
	return array[randfunc(array_length(array)-1)];
}
function struct_random(struct, randfunc=irandom) {
	var dude = variable_struct_get_names(struct)
	return struct[$array_random(dude, randfunc)];
}