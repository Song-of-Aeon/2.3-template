///@function log(data[...]);
function log() {
	var r = string(argument[0]), i;
	for (i=1; i<argument_count; i++) {
		r += ", " + string(argument[i]);
	}
	var stack = debug_get_callstack(10);
	//show_debug_message(stack);
	show_debug_message(string(current_time) + " : " + string(stack[1]) + " : " + r);
	var val = (array_length(stack)+1)*25;
	var hue = 0;
	
	//o_roommanager = green
	//ui = yellow
	//items = teal
	//bullets = orange
	//isaac = blue
	//particles = pink
	
	
	if array_contains_string(stack, "o_roommanager") {
		hue = 80;
	}
	if array_contains_string(stack, "o_uicontroller") {
		hue = 40;
	}
	if array_contains_string(stack, "it_") {
		hue = 114;
	}
	if array_contains_string(stack, "o_bullet") {
		hue = 25;
	}
	if array_contains_string(stack, "ISAAC") {
		hue = 140;
	}
	if array_contains_string(stack, "o_particlemanager") {
		hue = 235;
	}
	
	
	if hue == 0 val = 255;
	//nu consoleEntry(r, $bbbbbb);
	return r;
}

function error() {
	var r = string(argument[0]), i;
	for (i=1; i<argument_count; i++) {
		r += ", " + string(argument[i]);
	}
	var stack = debug_get_callstack(10);
	//show_debug_message(stack);
	//show_debug_message(string(current_time) + " : " + string(stack[1]) + " : " + r);
	consoleError(r);
	nu consoleEntry(r, c_red);
	return r;
}

function cog(data, color) {
	var r = string(argument[0]), i;
	var stack = debug_get_callstack(10);
	//show_debug_message(stack);
	show_debug_message(string(current_time) + " : " + string(stack[1]) + " : " + r);
	nu consoleEntry(r, color);
	return r;
}
/*
var a = {};
for(var i = 0; i < 24; i++){
	a[$i] = i;
}

for(var i = 0; i < 24; i++){
	log(a[$i]);	
}*/
//log(a[$4])
