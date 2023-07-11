function instance_nearest_array(x, y, array, xweight=1, yweight=1, notme=false, me=self) {
	var i;
	var farx = infinity;
	var fary = infinity;
	var guyx = 0;
	var guyy = 0;
	var farguy = noone;
	for (i=0; i<array_length(array); i++) {
		if !instance_exists(array[i]) || (notme && array[i] == me) continue;
		
		guyx = array[i].x;
		guyy = array[i].y;
		if abs(guyx-x)*xweight + abs(guyy-y)*yweight < abs(farx-x)*xweight + abs(fary-y)*yweight {
			/*if notme {
				if array[i].id != id {
					farx = guyx;
					fary = guyy;
					farguy = array[i];
				}
			} else {*/
				farx = guyx;
				fary = guyy;
				farguy = array[i];
			//}
		}
		/*if point_distance(x, y, array[i].x, array[i].y) < point_distance(x, y, farx, fary) {
			farx = array[i].x;
			fary = array[i].y;
			farguy = array[i];
		}*/
	}
	return farguy;
	//collision_ellipse_list()
}