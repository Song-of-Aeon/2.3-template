function textbox_set_style(style=global.textdefault) {
	if instance_exists(o_textbox) {
		o_textbox.width = style.width;
		o_textbox.height = style.height;
		o_textbox.namepos = style.namepos;
		o_textbox.font = style.font;
		o_textbox.spriteposy = style.spriteposy;
		o_textbox.sprite_index = style.sprite;
		o_textbox.draw = method(o_textbox, style.type);
		//o_textbox.x = style.x;
		//o_textbox.y = style.y;
		return true;
	}
	return false;
}
