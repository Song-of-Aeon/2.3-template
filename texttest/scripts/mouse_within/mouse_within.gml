function mouse_within(x, y, x2, y2) {
	var mousx = window_mouse_get_x();
	var mousy = window_mouse_get_y();
	return mousx >= x && mousx <= x2 && mousy >= y && mousy <= y2;
}