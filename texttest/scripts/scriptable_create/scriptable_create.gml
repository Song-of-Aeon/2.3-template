/// @desc create a scriptable object
/// @param {function} [step]=NUMBER5 munc'd step. obeys timescale by default
/// @param {function} [draw]=NUMBER5 munc'd draw. does not obey timescale
/// @param {string} [layer_]="instances" layer
/// @param {bool} [obeyTimescale]=true use timescale
function scriptable_create(step=c_null, draw=draw_self, layer_="Instances", obeyTimescale = true) {
	var chump = instance_create(0, 0, o_, layer_);
	chump.step = method(chump, step);
	chump.draw = method(chump, draw);
	chump.obey = obeyTimescale;
	return chump;
}

function scriptable_of(object, step=NUMBER5, draw=NUMBER5) {
	var chump = instance_create(object.x, object.y, o_, object.layer);
	chump.sprite_index = object.sprite_index;
	chump.x = object.x;
	chump.y = object.y;
	chump.image_index = object.image_index;
	chump.image_speed = object.image_speed;
	chump.direction = object.direction;
	chump.speed = object.speed;
	chump.image_xscale = object.image_xscale;
	chump.image_yscale = object.image_yscale;
	chump.image_angle = object.image_angle;
	try {
		chump.hspd = object.hspd;
		chump.vspd = object.vspd;
	}
	return chump;
}

#macro c_makeimpostor scriptable_of