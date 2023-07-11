function animation_destroy(instance=self, sprite=sprite_index) {
	if instance.image_index == sprite_get_indeces(sprite)-1 {
		instance_destroy(instance);
	}
}

function sprite_get_indeces(sprite) {
	return sprite_get_number(sprite);
}