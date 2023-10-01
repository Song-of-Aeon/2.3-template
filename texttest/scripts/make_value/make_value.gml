/// @desc makes a new value
/// @param {string} type any type of thing
/// @returns {any}

function make_value(type=array_random(global.gmtypes)) {
	switch type {
		case "bool":
			return bool(irandom(1));
		case "string":
			return speech(true);
		
		case "number":
		case "int32":
		case "int64":
			return random(2000000)-1000000;
		
		case "array":
			return [make_value()];
		
		case "vec3":
			return new vec3(make_value("number"), make_value("number"), make_value("number"));
		
		case "vec4":
			return new vec4(make_value("number"), make_value("number"), make_value("number"), make_value("number"));
		
		case "method":
			var thefunc = noone;
			var rand = 0;
			do {
				rand = irandom(300000);
				if script_get_name(rand) != -1 thefunc = rand;
			} until thefunc != noone;
			return thefunc;
		
		case "ref":
			//return scriptable_create();
		case "struct":
			return {val: make_value()};	
		
		case "ptr":
			return ptr(make_value(array_random(["number", "string"])));
		
		case "undefined":
			return undefined;
		case "null":
			return NaN;
		case "unknown":
			return infinity;
	}
}



