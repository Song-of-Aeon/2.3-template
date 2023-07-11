function c_randomname() {
	var names = [
		"untitled",
		"not-titled",
		"at least its not an empty string!",
		"",
		"pundertale",
		"stinky",
		"rtx morshu ON ICE!",
		"panasonic",
		"wowza!",
		"whats new pussycat",
		"pie flavor",
		"the secret!! lucky secret!!",
		"big chungus is funny again!",
		5,
	];
	return array_random(names);
}

function c_randomnamebusted() {
	return ([
		"untitled",
		"not-titled",
		"at least its not an empty string!",
		"",
		"pundertale",
		"stinky",
		"rtx morshu ON ICE!",
		"panasonic",
		"wowza!",
		"whats new pussycat",
		"pie flavor",
		"the secret!! lucky secret!!",
		5,
	])[irandom(11)];
}