function textfield(x_, y_, width_, height_, submit=c_null, font=ft_marineconstellation) constructor {
	x = x_;
	y = y_;
	width = width_;
	height = height_;
	text = [[]];
	history = [];
	backpos = 0;
	pos = new vec2(); //text[y][x], unfortunately
	highlight = new vec2(-1, -1);
	active = true;
	val = "";
	
	
	
	step = function() {
		if !active exit;
		
		var highlighting = highlight.x != -1;
		
		if !kunk_check(function(inputs) {
			if inputs[0] != vk_control && inputs[1] != ord("Z") {
				//savehistory();
			} else {
				log("undoing");
			}
		}) {
			val = keyboard_string;
			keyboard_string = "";
			interactions();
		} else {
			
		}
		movement();
		if val != "" {
			if highlighting {
				erase(pos, highlight);
				savehistory();
			} else if val == " " {
				savehistory();
			}
			array_insert(text[pos.y], pos.x, string_char_at(val, 1));
			pos.x++;
			val = "";
		}
	}
	
	interactions = function() {
		var highlighting = highlight.x != -1;
		if keyboard_check_pressed(vk_tab) val = "\t";
		if keyboard_check_pressed(vk_enter) {
			array_insert(text, pos.y+1, []);
			pos.x = 0;
			pos.y++;
		}
		if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_right)) {
			if keyboard_check(vk_shift) && !highlighting {
				highlight = new vec2(pos.x, pos.y);
			} else if !keyboard_check(vk_shift) {
				dehighlight();
			}
		}
		if keyboard_check_pressed(vk_backspace) {
			if highlighting {
				erase(pos, highlight);
				dehighlight();
			} else {
				array_delete(text[pos.y], pos.x-1, 1);
				pos.x--;
			}
		}
	}
	
	movement = function() {
		var linesize = array_length(text[pos.y]);
		if keyboard_check_pressed(vk_home) {
			pos.x = 0;
		}
		if keyboard_check_pressed(vk_end) {
			pos.x = array_length(text[pos.y]);
		}
		var hput = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left);
		var vput = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up);
		if keyboard_check(vk_control) && hput != 0 {
			pos.x = nextspace(line(pos.y), hput, pos.x);
		} else {
			pos.x += hput;
		}
		if pos.x < 0 {
			if pos.y {
				pos.y--;
				pos.x = array_length(text[pos.y]);
			} else pos.x = 0;
		}
		
		if pos.x > linesize {
			if pos.y == array_length(text)-1 {
				log("lold");
				pos.x = linesize;
			} else {
				log("trold");
				pos.y++;
				pos.x = 0;
			}
		}
		pos.y += vput;
		pos.y = clamp(pos.y, 0, array_length(text)-1);
	}
	
	draw = function() {
		//draw_text(x, y, gather());
		var xdraw = 0;
		var ydraw = 0;
		var mychar;
		var highlighting = false;
		iterate text to {
			double text gamble {
				if ((j == highlight.x && i == highlight.y) ^^
				(j == pos.x && i == pos.y)) &&
				highlight.x != -1 {
					highlighting = !highlighting;
				}
				draw_set_color(highlighting ? c_green : c_white);
				mychar = text[i][j];
				draw_text(x+xdraw, y+ydraw, mychar);
				xdraw += string_width(mychar);
			}
			xdraw = 0;
			ydraw += string_height("O");
		}
		
		var myline = line(pos.y);
		var myspot = string_copy(myline, 1, pos.x);
		mychar = string_char_at(myline, pos.x);
		xdraw = string_width(myspot);
		ydraw = pos.y*string_height("O");
		draw_rectangle(x+xdraw, y+ydraw, x+xdraw+string_width(mychar), y+ydraw+string_height(mychar), true);
		/*iterate text to {
			double text gamble {
				draw_text(x, y, );
			}
		}*/
	}
	
	gather = function() {
		var str = "";
		iterate text to {
			double text gamble {
				str += text[i][j];
			}
			str += "\n";
		}
		return str;
	}
	
	line = function(ypos) {
		var str = "";
		iterate text[ypos] to {
			str += text[ypos][i];
		}
		return str;
	}
	
	dehighlight = function() {
		highlight = new vec2(-1, -1);
	}
	
	erase = function(point1, point2) {
		var low, high;
		if point1.y*999+point1.x < point2.y*999+point2.x {
			low = point1;
			high = point2;
		} else {
			low = point2;
			high = point1;
		}
		do {
			array_delete(text[high.y], high.x-1, 1);
			high.x--;
			if high.x < 0 {
				/*var insert = [];
				array_copy(insert, 0, text[high.y-1]);
				array_insert_array(text[high.y-1], text[high.y], array_length(text[high.y-1]));
				array_delete(text, high.y, 1);*/
				//doin it
				high.y--;
				high.x = array_length(text[high.y]);
			}
		} until low.x == high.x && low.y == high.y;
	}
	
	insert = function(pos_, str) {
		var spot = new vec2(pos_.x, pos_.y);
		read str out {
			var char = string_char_at(str, i);
			if char == "\n" {
				array_insert(text, spot.y+1, []);
				spot.x = 0;
				spot.y++;
			} else {
				array_insert(text[spot.y], spot.x, char);
				spot.x++;
			}
		}
		pos.x = spot.x;
		pos.y = spot.y;
	}
	
	savehistory = function() {
		
		//array_delete(history, array_length(history)-backpos, backpos);
		var stupidassmanualcopy = [];
		iterate text to {
			stupidassmanualcopy[i] = [];
			double text gamble {
				stupidassmanualcopy[i][j] = text[i][j];
			}
		}
		
		//array_push(history, deep_copy(text));
		array_push(history, stupidassmanualcopy);
		log(history);
		backpos = 0;
	}
	savehistory();
	
	loadhistory = function() {
		backpos++;
	}
	
	
	
	/*insert(pos,
@"it's a beautiful day outside.
birds are singing, flowers are blooming...
on days like these, kids like you...
Should be burning in hell."
	);*/
	
	
	
	nu kunction(function() {
		highlight = new vec2(0, 0);
		pos.y = array_length(text)-1;
		pos.x = array_length(text[pos.y]);
	}, [vk_control, ord("A")]);

	nu kunction(function() {
		pos.y = 0;
		pos.x = 0;
	}, [vk_control, vk_home]);

	nu kunction(function() {
		pos.y = array_length(text)-1;
		pos.x = array_length(text[pos.y]);
	}, [vk_control, vk_end]);

	nu kunction(function() {
		if highlight.x == -1 exit;
		var low, high;
		if pos.y*999+pos.x < highlight.y*999+highlight.x {
			low = pos;
			high = highlight;
		} else {
			low = highlight;
			high = pos;
		}
		var i, j;
		var str = "";
		j = low.x;
		for (i=low.y; i<high.y; i++) {
			log(line(i));
			log(array_length(text[i]));
			for (; j<array_length(text[i]); j++) {
				str += text[i][j];
			}
			j = 0;
		}
		log(line(i));
		for (; j<high.x; j++) {
			str += text[i][j];
		}
		clipboard_set_text(str);
	}, [vk_control, ord("C")]);

	nu kunction(function() {
		if highlight.x == -1 exit;
		var low, high;
		if pos.y*999+pos.x < highlight.y*999+highlight.x {
			low = pos;
			high = highlight;
		} else {
			low = highlight;
			high = pos;
		}
		var i, j;
		var str = "";
		j = low.x;
		for (i=low.y; i<high.y; i++) {
			log(line(i));
			log(array_length(text[i]));
			for (; j<array_length(text[i]); j++) {
				str += text[i][j];
			}
			j = 0;
		}
		log(line(i));
		for (; j<high.x; j++) {
			str += text[i][j];
		}
		erase(pos, highlight);
		clipboard_set_text(str);
	}, [vk_control, ord("X")]);

	nu kunction(function() {
		insert(clipboard_get_text());
	}, [vk_control, ord("V")]);
	
	nu kunction(function() {
		log(history);
		var saveplease = false;
		if !backpos {
			saveplease = true;
			var stupidassmanualcopy = [];
			iterate text to {
				stupidassmanualcopy[i] = [];
				double text gamble {
					stupidassmanualcopy[i][j] = text[i][j];
				}
			}
			//var saving = stupidassmanualcopy;
			saving = stupidassmanualcopy;
		}
		if saveplease {
			//array_push(history, saving);
		}
		backpos++;
		if backpos <= array_length(history) {
			//text = history[0]
			text = deep_copy(history[array_length(history)-backpos]);
		}
		
		
	}, [vk_control, ord("Z")]);
	
	nu kunction(function() {
		backpos--;
		if !backpos {
			text = saving;
			exit;
		}
		text = deep_copy(history[array_length(history)-backpos]);
	}, [vk_control, ord("Y")]);
}



//global.kunctions = [];
//global.kunctions[vk_control][vk_space] = 0;



