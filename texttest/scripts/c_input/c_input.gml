function c_input() {
	var i;
	var inputs = variable_struct_get_names(global.inputs);
	for (i=0; i<array_length(inputs); i++) {
		set_value(self, inputs[i], global.inputs[$inputs[i]]);
	}
	
	//these guys are compounds that are per-instance of c_input
	buttons = [shoot, bomb, special];
}

function c_inputupdate() {
	var inputs = variable_struct_get_names(global.inputs);
	var i;
	for (i=0; i<array_length(inputs); i++) {
		global.inputs[$inputs[i]].update();
	}
}

function c_inputload() {
	nu kinput("left", [vk_left, vk_numpad4, gp_padl], "Left");
	nu kinput("down", [vk_down, vk_numpad2, vk_numpad5, gp_padd], "Down");
	nu kinput("up", [vk_up, vk_numpad8, gp_padu], "Up");
	nu kinput("right", [vk_right, vk_numpad6, gp_padr], "Right");
	
	nu kinput("shoot", ["A", gp_face3], "Left use");
	nu kinput("bomb", ["S", gp_face1], "Center use");
	nu kinput("special", ["D", gp_face2], "Right use");
	nu kinput("shift", [vk_shift, vk_space, gp_shoulderl, gp_shoulderr, gp_shoulderlb, gp_shoulderrb], "Focus");
	
	nu kinput("map", [vk_tab, gp_face4], "Open map");
	nu kinput("esc", [vk_escape, gp_start], "Pause");
	nu kinput("select", [vk_enter], "Select", ["shoot"]);
	nu kinput("back", [vk_backspace], "Back", ["bomb", "esc"]);
	nu kinput("skip", [vk_control, gp_select], "Skip text", ["special"]);
	nu kinput("null", []);
}

function kinput(name_, keys_, displayname_=name_, compositekeys_=[]) constructor {
	name = name_;
	key = keys_;
	displayname = displayname_;
	compositekeys = compositekeys_;
	hit = 0;
	hold = 0;
	drop = 0;
	//axes = array_create(gp_axis_orientation_w); //yeah ill finish this later
	
	update = function() {
		var i, j;
		hit = false;
		hold = false;
		drop = false;
		iterate compositekeys to {
			for (j=0; j<array_length(global.inputs[$compositekeys[i]].key); j++) {
			hit |= input_active(global.inputs[$compositekeys[i]].key[i], INPUT.PRESSED);
			hold |= input_active(global.inputs[$compositekeys[i]].key[i], INPUT.HELD);
			drop |= input_active(global.inputs[$compositekeys[i]].key[i], INPUT.RELEASED);
			}
		}
		for (i=0; i<array_length(key); i++) {
			hit |= input_active(key[i], INPUT.PRESSED);
			hold |= input_active(key[i], INPUT.HELD);
			drop |= input_active(key[i], INPUT.RELEASED);
		}
	}
	global.inputs[$name] = self;
}

global.inputs = {};
c_inputload();


