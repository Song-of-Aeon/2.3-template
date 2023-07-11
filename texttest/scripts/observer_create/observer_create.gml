function observer_create(obj, overwrite=false) {
	if overwrite || !instance_exists(obj) {
		var chump = instance_create(0, 0, obj);
		with chump only_one(overwrite);
		return obj;
	}
	return instance_nearest(0, 0, obj);
}