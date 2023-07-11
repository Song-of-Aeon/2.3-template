function textboxes_complete() {
	var i;
	if !advance return true;
	var shits = instance_get_all(o_textbox);
	for (i=0; i<instance_number(o_textbox); i++) {
		if !shits[i].advance continue;
		if !shits[i].isdone return false;
	}
	with o_textbox gotime = true;
	return true;
}