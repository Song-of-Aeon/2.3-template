function array_alphebetize(array) {
	log(array);
	array_sort(array, function(th1ng, th2ng) {
		var i;
		var returnal = 0;
		for (i=1; i<=string_length(th1ng); i++) {
			var name1 = string_lower(string_char_at(th1ng, i));
			var name2 = string_lower(string_char_at(th2ng, i));
			if name1 < name2 {
				return -1;
			} else if name1 > name2 {
				return 1;
			} else continue;
		}
		return -1;
	});
}
function array_alphebetize_property(array, property="name") {
	log(array);
	global.theproperty = property;
	array_sort(array, function(th1ng, th2ng) {
		var i;
		var returnal = 0;
		for (i=1; i<=string_length(th1ng[$global.theproperty]); i++) {
			var name1 = string_lower(string_char_at(th1ng[$global.theproperty], i));
			var name2 = string_lower(string_char_at(th2ng[$global.theproperty], i));
			if name1 < name2 {
				return -1;
			} else if name1 > name2 {
				return 1;
			} else continue;
		}
		return -1;
	});
}