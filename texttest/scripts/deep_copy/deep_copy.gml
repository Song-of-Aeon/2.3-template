/// @desc Creates a deep copy of any structlike object (gamobject, global, struct, etc)
/// @param {Any} struct Description
/// @param {array<any>} [antiwhiletrue]=[] Description
/// @returns {struct} Description
function deep_copy(struct, antiwhiletrue=[]) {
	switch typeof(struct) {
		case "array":
			var dude = [];
			array_copy(dude, 0, struct, 0, array_length(struct));
			return dude;
		default:
			return struct;
			break;
		case "struct":
	}
	var newone = {};
	var oldstuff = variable_struct_get_names(struct);
	var i;
	for (i=0; i<array_length(oldstuff); i++) {
		switch typeof(struct[$oldstuff[i]]) {
			case "struct":
				if !array_contains(antiwhiletrue, struct[$oldstuff[i]]) {
					array_push(antiwhiletrue, struct[$oldstuff[i]]);
					newone[$oldstuff[i]] = deep_copy(struct[$oldstuff[i]], antiwhiletrue);
				} else {
					newone[$oldstuff[i]] = struct[$oldstuff[i]];
				}
				break;
			case "array":
				newone[$oldstuff[i]] = [];
				var len = array_length(struct[$oldstuff[i]])
				array_copy(newone[$oldstuff[i]], 0, struct[$oldstuff[i]], 0, len);
				break;
			case "method":
				if method_get_self(struct[$oldstuff[i]]) == struct {
					newone[$oldstuff[i]] = method(newone, struct[$oldstuff[i]]);
				} else {
					newone[$oldstuff[i]] = struct[$oldstuff[i]];
					//log("it's someone else!");
				}
				break;
			default:
				newone[$oldstuff[i]] = struct[$oldstuff[i]];	
				break;
		}
	}
	return newone;
}

function deep_copy_instance(instance) {
	var farts = instance_create(instance.x, instance.y, instance.object_index);
	var oldstuff = variable_struct_get_names(instance);
	var i;
	for (i=0; i<array_length(oldstuff); i++) {
		if is_struct(variable_instance_get(instance, oldstuff[i])) {
			variable_instance_set(farts, oldstuff[i], deep_copy(variable_instance_get(instance, oldstuff[i])));
		} else {
			variable_instance_set(farts, oldstuff[i], variable_instance_get(instance, oldstuff[i]));
		}
	}
	
	return farts;
}

function deep_copy_into(struct, targetstruct, antiwhiletrue=[]) {
	var oldstuff = variable_struct_get_names(struct);
	
	var i;
	log(11);
	for (i=0; i<array_length(oldstuff); i++) {
		log(string(22) + string(i));
		if is_struct(struct[$oldstuff[i]]) {
			if !array_contains(antiwhiletrue, struct[$oldstuff[i]]) {
				log(string(99) + oldstuff[i]);
				array_push(antiwhiletrue, struct[$oldstuff[i]]);
				targetstruct[$oldstuff[i]] = deep_copy(struct[$oldstuff[i]], antiwhiletrue);
				
			} else {
				log("WASNT" + oldstuff[i]);
				targetstruct[$oldstuff[i]] = struct[$oldstuff[i]];
			}
		} else {
			log(string(33) + oldstuff[i]);

			targetstruct[$oldstuff[i]] = struct[$oldstuff[i]];
		}
	}
			log(string(44) + string(i));
	log(irandom(999));
}

function deep_copy_instance_into(instance, targetinstance) {
	var oldstuff = variable_struct_get_names(instance);
	var i;
	for (i=0; i<array_length(oldstuff); i++) {
		if is_struct(variable_instance_get(instance, oldstuff[i])) {
			variable_instance_set(targetinstance, oldstuff[i], deep_copy(variable_instance_get(instance, oldstuff[i])));
		} else {
			variable_instance_set(targetinstance, oldstuff[i], variable_instance_get(instance, oldstuff[i]));
		}
	}
}