global.tags = {};

function tag(tagid, objectid=id) {
	if !variable_struct_exists(global.tags, tagid) {
		global.tags[$tagid] = [];
	}
	array_push(global.tags[$tagid], objectid);
}
function detag(tagid, objectid=id) {
	return array_remove(global.tags[$tagid], objectid);
}

function with_tag(tag_, function_) {
	var j;
	for (j=0; j<array_length(global.tags[$tag_]); j++) {
		with global.tags[$tag_][j] method(global.tags[$tag_][j], function_)();
	}
}

function tag_get_instances(tag_) {
	var dudes = [];
	var j=0;
	while j<array_length(global.tags[$tag_]) {
		if instance_exists(global.tags[$tag_][j]) {
			array_push(dudes, global.tags[$tag_][j]);
			j++;
		} else {
			array_delete(global.tags[$tag_], j, 1);
		}
	}
	return dudes;
}

function tag_contains(tag_, instance) {
	return array_contains(tag_get_instances(tag_), instance);
}

function tag_clear(tag_) {
	global.tags[$tag_] = [];
}

function tag_kill(tag_) {
	var dudes = tag_get_instances(tag_);
	iterate dudes to {
		instance_destroy(dudes[i]);
	}
	global.tags[$tag_] = [];
}

/*function 日本語() {
	
}*/