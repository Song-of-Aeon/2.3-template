function txt(text_="never again.", sprite_=global.textguy[$"nothingman"].NOTHING, spritepos_=SPRITEPOS.REPLACE, event_=c_null, sounds_=[], funcs_=[]) {
	return {
		text: text_,
		name: sprite_.char.name,
		sprite: sprite_.val,
		guy: sprite_.char,
		event: event_,
		spritepos: spritepos_,
		sounds: sounds_,
		funcs: funcs_,
		type: "normal",
	};
}

enum SPRITEPOS {
	LEFT,
	MIDLEFT,
	CENTER,
	MIDRIGHT,
	RIGHT,
	HIDDEN,
	REPLACE,
}