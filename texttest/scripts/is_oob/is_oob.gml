/*function is_oob(variation=sprite_width/2, horizontal=true, vertical=true) {
	return ((!(target.x==clamp(target.x, 0-variation, global.gw+variation)) && vertical) && (!(target.y==clamp(target.y, 0-variation, global.gh+variation)) && vertical));
}*/

function is_oob_return(variation=sprite_width/2, horizontal=true, vertical=true, target=self) {
	var xdist = (target.x-clamp(target.x, 0-variation, global.gw+variation))*horizontal;
	var ydist = (target.y-clamp(target.y, 0-variation, global.gh+variation))*vertical;
	return abs(xdist)+abs(ydist);
}

function is_oob(variation=sprite_width/2, horizontal=true, vertical=true, target=self) {
	if horizontal && vertical {
		return !(target.x=clamp(target.x, 0-variation, global.gw+variation) && target.y=clamp(target.y, 0-variation, global.gh+variation));
	} else if horizontal {
		return !(target.x=clamp(target.x, 0-variation, global.gw+variation));
	} else if vertical {
		return !(target.y=clamp(target.y, 0-variation, global.gh+variation));
	} else {
		log("????????????");
		return true;
	}
}