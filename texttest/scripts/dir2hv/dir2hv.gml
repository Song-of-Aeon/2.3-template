
function dir2hv(dir_=direction, spd_=speed) {
	//gml_pragma("forceinline")
	//if dir && spd {
		hspd = (dsin(dir_+90)%360)*spd_;
		vspd = (dcos(dir_+90)%360)*spd_;
		dir = 0;
		spd = 0;
		direction = 0;
		speed = 0;
	//}
	
}
function hv2dir(hspd, vspd) {
	spd = (abs(hspd)+abs(vspd))/2;
	dir = darctan2(hspd, vspd);
	speed = spd;
	direction = dir;
}