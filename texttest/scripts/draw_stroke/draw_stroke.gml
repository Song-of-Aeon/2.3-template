function draw_stroke(x, y, x2, y2, width=1) {
	draw_sprite_ext(s_pixel, 1, x, y, point_distance(x, y, x2, y2), width/2, point_direction(x, y, x2, y2), draw_get_color(), draw_get_alpha());
}

function draw_ring(x, y, radius, outlinedoesntwork=true, width=1, sides=ceil(radius/2+4)) {
	var boul;
	var xs = [];
	var ys = [];
	var i, dude;
	var myit = 1;
	var lineang = 360/sides;
	xs[0] = x+radius;
	ys[0] = y;
	for (i=1; i<=360; i+=lineang) {
		dude = distabs(i, radius);
		xs[myit] = x+dude.x;
		ys[myit] = y+dude.y;
		draw_stroke(xs[myit-1], ys[myit-1], xs[myit], ys[myit], width);
		myit++;
	}
	draw_stroke(xs[myit-1], ys[myit-1], xs[0], ys[0], width);
	//log("im tryna do it");
	//draw_sprite(s_mistake, 0, x, y);
}


function draw_dot(x, y) {
	draw_sprite_ext(s_pixel, 0, x, y, 1, 1, 0, draw_get_color(), draw_get_alpha());
}

#macro draw_line draw_stroke
#macro draw_line_width draw_stroke
//#macro draw_ring draw_ring
#macro draw_point draw_dot

/*
function shootyourself(dontcare) {
	return "im shooting";
}

#macro string shootyourself

log(string("im not shooting"));
*/