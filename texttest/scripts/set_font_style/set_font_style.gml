function set_font_style(style, language=global.lang) {
	switch language {
		case LANGUAGE.JAPANESE:
			style += 16;
			break;
	}
	draw_set_font(global.fontset[style]);
}

//from x_fontsetup