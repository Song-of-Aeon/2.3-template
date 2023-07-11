function ncms(val, count_=count) { //not count mod set
	var ount = floor(count_);
	if nam(ount, val) && !counter[ount] {
		counter[ount] = true;
		return true;
	}
	return false;
}

function countreset(size) {
	counter = array_create(size, false);
}