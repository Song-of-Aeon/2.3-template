function st_dayselect() {
	c_input();
	routepos = mod_negative((routepos+downp-upp), 3);
	if back.hit {
		state = st_dataselect;
		drawstate = st_datadraw;
		seedstring = "";
		exit;
	}
	if keyboard_string = string_digits(keyboard_string) && string_length(seedstring) < 8 {
		seedstring += keyboard_string;
	}
	if keyboard_check_pressed(vk_backspace) && string_length(seedstring) {
		seedstring = string_delete(seedstring, string_length(seedstring), 1);
	}
	io_clear();
	if select.hit {
		if !routepos {
			global.currentday = routepos+1;
			global.currentstage = 0;
			instance_create(0, 0, o_doors);
			//disable = true;
			state = c_null;
			if seedstring != "" {
				global.seed.value = real(seedstring);
			} else {
				global.seed = new RNG(irandom(999999999));
			}
		}
		
	}
	
}

function st_daydraw() {
	var i;
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed_color(640/2, 250, difficulties[difpos], 1.4, 1.4, 0, c_white, c_white, difcolors[difpos], difcolors[difpos], 1);
	for (i=0; i<array_length(routes); i++) {
		draw_text_transformed_color(640/2, 280+i*30, routes[((i+routepos)%3)], (((i+routepos)%3)==routepos)*.4+1, (((i+routepos)%3)==routepos)*.4+1, 0, c_white, c_white, (((i+routepos)%3)==routepos) ? routecolors[(i+routepos)%3] : c_white, (((i+routepos)%3)==routepos) ? routecolors[(i+routepos)%3] : c_white, 1);
	}
	draw_set_valign(fa_top);
}