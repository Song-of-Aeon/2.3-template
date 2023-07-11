function draw_sprite_weird(sprite, subimg, x, y, wavelength, amplitude, ease=ac_sin, count=gc, imprecision=1) {
	draw_primitive_begin_texture(pr_trianglestrip, sprite_get_texture(sprite, subimg));
	var i;
	var width = sprite_get_height(sprite);
	var height = sprite_get_height(sprite);
	for (i=0; i<height; i+=imprecision) {
		draw_vertex_texture(x+easemult(ease, count+i, wavelength, amplitude), y+i, 0, i/height);
		draw_vertex_texture(x+width+easemult(ease, count+i, wavelength, amplitude), y+i, 1, i/height);
	}
	draw_primitive_end();
}