function draw_circle_width(x, y, r, w, outline) {
	var i;
	for (i=-floor(w/2); i<w; i++) {
		draw_ring(x, y, r+i/2, outline);
	}
}