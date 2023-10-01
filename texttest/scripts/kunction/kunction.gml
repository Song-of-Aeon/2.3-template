function kunction(func_, inputs_=[vk_tilde]) archetype {
	with other statish("kunctions", {});
	func = func_;
	inputs = inputs_;
	name = string(inputs);
	log(typeof(name));
	log(other);
	other.kunctions[$name] = self;
}

function kunk_check(prekunction=c_null) {
	var dudes = struct_get_names(kunctions);
	var j;
	var success = true;
	var prekunctioned = false;
	iterate dudes to {
		var friend = kunctions[$dudes[i]] ;
		success = true;
		for (j=0; j<array_length(friend.inputs)-1; j++) {
			if !keyboard_check(friend.inputs[j]) success = false;
		}
		if success && keyboard_check_pressed(friend.inputs[j]) {
			if !prekunctioned {
				prekunction(friend.inputs);
			}
			method(self, friend.func)();
			return true;
		} else success = false;
	}
	return false;
}

nu kunction(function() {log("great job!")}, [!instance_exists(o_persistent), vk_shift, vk_space]);