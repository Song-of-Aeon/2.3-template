function set_value(target, name, val) {
	if typeof(self) == "struct" {
		variable_struct_set(target, name, val);
	} else if instance_exists(target) {
		variable_instance_set(target, name, val);
	}
}
function get_value(target, name) {
	if typeof(self) == "struct" {
		return variable_struct_get(target, name);
	} else if instance_exists(target) {
		return variable_instance_get(target, name);
	}
	return undefined;
}