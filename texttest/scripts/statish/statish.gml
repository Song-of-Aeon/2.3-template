function statish(name, initialvalue=u) {
	if get_value(self, name) == undefined {
		set_value(self, name, initialvalue);
	}
}