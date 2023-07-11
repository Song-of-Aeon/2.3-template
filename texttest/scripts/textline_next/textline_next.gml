function textline_next() {
	do {
		if wait {
			interim = true;
			break;
		}
		draw_set_font(font);
		talkpos++;
		tevents = array_create(2000, new tevent());
		
		if msg[talkpos].type != "normal" {
			msg[talkpos].action(id);
			continue;
		}
		msg[talkpos].event();
		msg[talkpos].text = string_waits(msg[talkpos].text);
		msg[talkpos].text = global.textguy[$msg[talkpos].name].texteffects + msg[talkpos].text;
		array_push(backlog, msg[talkpos]);
		//array_insert(tacklog, 0, array_create(2000, new tevent()));
		var thetext = load_tevents(msg[talkpos].text, id);
		//var darray = [];
		//load_tevents(msg[talkpos].text, id, darray);
		//log(darray);
		array_push(tacklog, tevents);
		//log(tacklog[0]);
		msg[talkpos].text = lb_auto(thetext, width);
		charpos = 0;
		c_charpush(id, new talkchar(msg[talkpos].sprite, msg[talkpos].name, msg[talkpos].spritepos));
		talkspeed = talkers[0].textspeed;
		isdone = false;
		interim = false;
		count = 0;
		break;
	} until nah;
}

#macro NOD txt("")
#macro FAD ntxt(u, u, u, function() {global.fading = true})
#macro DEFAD ntxt(u, u, u, function() {global.fading = false})
#macro CLO ntxt(u, u, u, function() {y += 9999})
#macro DECLO ntxt(u, u, u, function() {y -= 9999})
global.fading = false;