function draw_sprite_at(sprite_index, image_index, x, y, maxwidth, maxheight) {
	var ratio1 = maxwidth/sprite_get_width(sprite_index);
	var ratio2 = maxheight/sprite_get_height(sprite_index);
	if ratio2 > ratio1 {
		var ratio = ratio2;
	} else {
		var ratio = ratio1;
	}
	draw_sprite_stretched(sprite_index, image_index, x-sprite_get_xoffset(sprite_index)*ratio, y-sprite_get_yoffset(sprite_index)*ratio, sprite_get_width(sprite_index)*ratio, sprite_get_height(sprite_index)*ratio);
}
function draw_sprite_at_ext(sprite_index, image_index, x, y, maxwidth, maxheight, color, alpha) {
	var ratio1 = maxwidth/sprite_get_width(sprite_index);
	var ratio2 = maxheight/sprite_get_height(sprite_index);
	if ratio2 > ratio1 {
		var ratio = ratio2;
	} else {
		var ratio = ratio1;
	}
	draw_sprite_stretched_ext(sprite_index, image_index, x-sprite_get_xoffset(sprite_index)*ratio, y-sprite_get_yoffset(sprite_index)*ratio, sprite_get_width(sprite_index)*ratio, sprite_get_height(sprite_index)*ratio, color, alpha);
}