function c_pronouninsert(str) {
	read str out {
		if string_copy(str, i, 5) == "%she%" {
			str = string_delete(str, i, 5);
			str = string_insert(global.mypronoun.x, str, i);
		}
		if string_copy(str, i, 5) == "%her%" {
			str = string_delete(str, i, 5);
			str = string_insert(global.mypronoun.y, str, i);
		}
	}
}