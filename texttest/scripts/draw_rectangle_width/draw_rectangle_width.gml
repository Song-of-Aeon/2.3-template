function draw_rectangle_width(x1, y1, x2, y2, width) {
	var i;
	for (i=-ceil(width/2); i<floor(width/2); i++) {
		draw_rectangle(x1+i, y1+i, x2+i, y2+i, true);
	}
}