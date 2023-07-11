function string_waits(str) {
	var hardstops = [". ", "? ", ": ", "! "];
	var softstops = [", ", "; ", /*"- "*/];
	read str out {
		if array_contains(hardstops, string_copy(str, i-1, 2)) {
			str = string_insert("|w0036", str, i-1);
			i += 6;
		}
		if array_contains(softstops, string_copy(str, i-1, 2)) {
			str = string_insert("|w0016", str, i-1);
			i += 6;
		}
	}
	return str;
}