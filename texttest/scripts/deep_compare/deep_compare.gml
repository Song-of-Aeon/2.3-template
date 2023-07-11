function deep_compare(val1, val2) {
	var type1 = typeof(val1);
	var type2 = typeof(val2);
	if type1 != type2 return false;
	if !type_reference(val1) return val1 == val2;
	switch typeof(type1) {
		case "ref":
			if val1.object_index != val2.object_index return false;
			var dudes = variable_instance_get_names(val1);
			var dudes2 = variable_instance_get_names(val1);
			array_append(dudes, global.gameobjectvariables);
			array_append(dudes2, global.gameobjectvariables);
			if array_length(dudes) != array_length(dudes2) return false;
			iterate dudes to {
				if !deep_compare(get_value(val1, dudes[i]), get_value(val2, dudes[i])) {
					return false;
				}
			}
		case "struct":
			var dudes = variable_struct_get_names(val1);
			var dudes2 = variable_struct_get_names(val1);
			if array_length(dudes) != array_length(dudes2) return false;
			iterate dudes to {
				if !deep_compare(get_value(val1, dudes[i]), get_value(val2, dudes[i])) {
					return false;
				}
			}
			return true;
		case "array":
			if array_length(val1) != array_length(val2) return false;
			iterate val1 to {
				if !deep_compare(val1[i], val2[i]) return false;
			}
			return true;
		case "method":
			if wunction(val1) != wunction(val2) return false;
			/*global.deepcompareval1 = val1;
			global.deepcompareval2 = val2;
			junction(@"
				let str1 = global.gmldeepcompareval.toString();
				let str2 = global.gmldeepcompareva2.toString();
				global.gmldeepcomparereturn = (str1 == str2);
			");
			return global.deepcomparereturn;*/
			return stunction(val1) == stunction(val2);
	}
}

//global.deepcompareval1 = c_null;
//global.deepcompareval2 = c_null;
//global.deepcomparereturn = "return false";