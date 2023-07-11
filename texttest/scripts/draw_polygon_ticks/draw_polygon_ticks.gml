function draw_polygon_ticks(x, y, startang, sides, enddistance, startdistance=0, ticks=sides, width=1, addang=360) {
	//NEVER USE THIS SHIT
	var boul;
	var xs = [];
	var ys = [];
	var xs2 = [];
	var ys2 = [];
	var percents = [];
	var i, dude, dude2, j, middude, middude2, rollover;
	var rollover = 0;
	var myit = 0;
	var lineang = 360/sides;
	var done = false;
	for (i=startang; i<=startang+360; i+=lineang) {
		if i > startang+addang {
			percents[myit] = (addang%lineang)/(lineang);
			done = true;
		} else {
			percents[myit] = 1;
		}
		dude = distabs(i, enddistance);
		dude2 = distabs(i, startdistance);
		xs[myit] = x+dude.x;
		ys[myit] = y+dude.y;
		xs2[myit] = x+dude2.x;
		ys2[myit] = y+dude2.y;
		//draw_stroke(x+dude2.x, y+dude2.y, x+dude.x, y+dude.y, width);
		myit++;
		if done break;
	}
	log("start");
	log(xs);
	log(ys);
	log(xs2);
	log(ys2);
	//for (i=0; i<ticks; i++) {
		for (j=1; j<array_length(xs); j++) {
			//if TICKS PER SIDE IS NOT TICKS PER SIDE MOD ONE 
			//THEN INCREMEMENT ROLLOVER BY THE REMAINING AMOUNT
			//AND ADD THAT TO THE NEXT LERP
			rollover += sides/ticks;
			while rollover >= 0 && rollover <= 1 {
				middude = new vec2(lerp(xs[j-1], xs[j], rollover), lerp(ys[j-1], ys[j], rollover));
				
				//middude = new vec2(xs[j], ys[j]);
				middude2 = new vec2(lerp(xs2[j-1], xs2[j], rollover), lerp(ys2[j-1], ys2[j], rollover));
				//middude2 = new vec2(x, y);
				//log(middude, middude2);
				draw_stroke(middude2.x, middude2.y, middude.x, middude.y, width);
				draw_text(middude.x, middude.y, rollover);
				//draw_sprite(s_mistake, 0, middude.x, middude.y);
				rollover--;
			}
		}
	//}
	//draw_lines(xs, ys, array_create(99, 1), 3);
}