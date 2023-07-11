function st_textnvl() {
	if halting exit;
	draw_set_font(font);
	draw_self();
	
	var xpos = 0;
	var lb = 0;
	var ftheight = string_size("O").y;
	var textheight = (string_count("#", string_copy(msg[talkpos].text, 1, charpos))+1)*ftheight;
	iterate backlog to {
		textheight += (string_count("#", backlog[i].text)+1)*ftheight;
	}
	
	while textheight >= height {
		lb--;
		textheight -= ftheight;
	}
	color = c_white;
	size = 1;
	angle = 0;
	alpha = 1;
	color = c_white;
	color2 = c_white;
	textpos = new vec2();
	var mychar = "";
	var j;
	for (j=0; j<array_length(backlog)-1; j++) {
		draw_set_color(backlog[j].guy.namecolor);
		draw_set_halign(fa_right);
		doblue
			draw_text(x+namepos.x+blue, y+lb*ftheight+namepos.y+blue, backlog[j].guy.displayname);
		endblue
		draw_set_halign(fa_left);
		draw_set_color(c_white);
		for (i=1; i<=string_length(backlog[j].text); i++) {
			mychar = string_char_at(backlog[j].text, i);

			textpos.x = x+xpos-width/2+wiggle.x+shake.y;
			textpos.y = y+lb*ftheight+wiggle.x+shake.y;
			textpass(tacklog[j]);
			textpos.y -= ftheight*(size-1)/2;
			//if(BROWSER){ //html5 does this right, vm is bugged, so we unbug it
				textpos.y += 7	
			//}
		    if mychar = "#" {
		        lb++;
		        xpos = 0;
		    } else if lb >= 0 {
				draw_set_color(color);
				draw_set_alpha(alpha);
				draw_text_transformed(textpos.x, textpos.y, mychar, size, size, angle);
				xpos += string_width(mychar)*size;
			}
		}
		draw_set_color(c_white);
		draw_set_alpha(1);
		lb += 1.5;
		color = c_white;
		size = 1;
		angle = 0;
		alpha = 1;
		color = c_white;
		color2 = c_white;
		mychar = "";
		xpos = 0;
	}
	draw_set_color(talkers[0].namecolor);
	draw_set_halign(fa_right);
	doblue
		draw_text(x+namepos.x+blue, y+lb*ftheight+namepos.y+blue, talkers[0].displayname);
	endblue
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	for (i=1; i<=charpos; i++) {
		mychar = string_char_at(msg[talkpos].text, i);
		textpos.x = x+xpos-width/2+wiggle.x+shake.y;
		textpos.y = y+lb*ftheight+wiggle.x+shake.y;
		textpass();
		textpos.y -= ftheight*(size-1)/2;
		//if(BROWSER){ //html5 does this right, vm is bugged, so we unbug it
			textpos.y += 7	
		//}
		if mychar = "#" {
		    lb++;
		    xpos = 0;
		} else if lb >= 0 {
			draw_set_color(color);
			draw_set_alpha(alpha);
			draw_text_transformed(textpos.x, textpos.y, mychar, size, size, angle);
			xpos += string_width(mychar)*size;
		}
	}
	if charpos >= string_length(msg[talkpos].text) {
		//log(x+width/2, y+height);
		draw_meaning(x+width/2, y+height, "*", u, u, u, u, easemult(ac_sin, waitcount, 200, .3)+.5);
	}
	draw_set_color(c_white);
	draw_set_alpha(1);
}