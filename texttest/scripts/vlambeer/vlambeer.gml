// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_screenshake(_amplitude,_length){
	_amplitude = min(_amplitude, 1000);
	if instance_exists(o_screenshake) {
		o_screenshake.length = max(o_screenshake.length, _length);
		o_screenshake.amplitude += max(o_screenshake.amplitude, _amplitude);
	} else {
		with instance_create(0, 0, o_screenshake) {
			length = _length;
			amplitude = _amplitude;
		}
	}
}

/**
 * This function "bumps" the screen in a specific direction, as opposed to c_screenshake, which shakes the screen in all directions
 * @param {real} _amplitude amount of bump.
 * @param {Enum.ANGLE} direction Direction of the bump, use ANGLE enum or degrees.
 */
function c_screenbump(_amplitude,direction){
	_amplitude = min(_amplitude, 1000);
	with(instance_create(0,0,o_screenbump)){
		dir = direction;
		amplitude = _amplitude;
	}
}
function c_hitpause(mstime){
	var initialtime = get_timer();
	while(true){
		if(initialtime+(mstime*1000) < get_timer()){
			return;
		}
	}
}
///flash(surface, duration, colour);
function c_flash(_surface/*:surface*/, _duration/*:number*/, _color/*:any*/){
	with(instance_create(0,0,o_flash)){
		surface = other._surface;
		duration = other._duration;
		color = other._color;
	}
}
 