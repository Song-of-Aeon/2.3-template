function point_me(xdif=0, ydif=0, myxdif=0, myydif=0) {
	return point_direction(x+xdif, y+ydif, ISAAC.visiblex+myxdif, ISAAC.visibley+myydif);
}