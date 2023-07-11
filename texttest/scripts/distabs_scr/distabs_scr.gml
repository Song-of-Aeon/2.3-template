//this function is replaced in jsreplacements
function distabs(dir, distance) {
	var dist = {
		x: (dsin(dir+90)%360)*distance,
		y: (dcos(dir+90)%360)*distance,
	}
	return dist;
}