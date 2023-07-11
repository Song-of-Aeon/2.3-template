function cycle(val, modval) {
	if val < 1 {
		while val < 0 {
			val += modval;
		}
		return val;
	} else {
		return val % modval;
	}
}