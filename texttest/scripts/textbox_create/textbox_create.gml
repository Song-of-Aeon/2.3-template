function textbox_create(textscript=txt_fartman, style=global.textstyles.adv, autoadvancewait=false, destroyothers=true) {
	instance_destroy(destroyothers ? o_textbox : noone);
	var chump = instance_create(style.x, style.y, o_textbox);
	chump.width = style.width;
	chump.height = style.height;
	chump.spriteposy = style.spriteposy;
	chump.msgscript = textscript;
	chump.sprite_index = style.sprite;
	chump.namepos = style.namepos;
	chump.font = style.font;
	chump.draw = method(chump, style.type);
	chump.style = style;
	with chump {
		msgscript();
		if autoadvancewait == false {
			advance = true;
			naturaladvance = true;
		} else {
			advance = false;
			naturaladvance = false;
			iterate msg to {
				msg[i].text = string_concat(msg[i].text, "|w"+autoadvancewait+"  ");
			}
		}
		if style == global.textstyles.nvl {
			array_insert(msg, 0, btxt(s_nvlbg));
		}
		textline_next();
	}
	return chump;
}