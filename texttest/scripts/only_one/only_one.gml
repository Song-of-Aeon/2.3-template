function only_one(isurvive=true) {
	if isurvive {
		global.thesurvivor = self;
		with object_index {
			if self != global.thesurvivor instance_destroy();
		}
	} else {
		if instance_number(object_index) > 1 instance_destroy();
	}
}