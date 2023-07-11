step = NUMBER5;
draw = NUMBER5;
count = 0;
iterations = 0;
obey = false;
if instance_exists(o_roommanager) {
	seed = new RNG(o_roommanager.roomRNG);
} else {
	seed = new RNG(global.seed);
}
