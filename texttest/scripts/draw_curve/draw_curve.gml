function draw_curve(x, y, precision, amount) {
	/*animcurve_get()
	var myfriend = animcurve_create();
	var thecurve = [];
	thecurve[0] = animcurve_channel_new();
	thecurve[0].type = animcurvetype_bezier;
	var thepoints = [];
	thepoints[0] = animcurve_point_new();
	thepoints[0].posx = 0;
	thepoints[0].value = 0;
	thepoints[1] = animcurve_point_new();
	thepoints[1].posx = .15;
	thepoints[1].value = .75;
	thepoints[2] = animcurve_point_new();
	thepoints[2].posx = .5;
	thepoints[2].value = 1;
	thepoints[3] = animcurve_point_new();
	thepoints[3].posx = .85;
	thepoints[3].value = .75;
	thepoints[4] = animcurve_point_new();
	thepoints[4].posx = 1;
	thepoints[4].value = 0;
	thecurve[0].points = thepoints;
	myfriend.channels = thecurve;
	myfriend.toString = {}.toString;
	var shitter = animcurve_point_new()*/
	//log(deep_copy(thepoints[0]))
	var i;
	var mult = 1;
	for (i=0; i!=50*mult; i=lapp(i,50*mult,1)) {
		draw_dot(x+easemult(ac_moon, i, 50*mult, 50*mult*amount), y+i*mult);
	}
}