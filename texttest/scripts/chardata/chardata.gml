function chardata(name_="drip", displayname_="among", sprite_=s_null, talksound_=se_null, textspeed_=.5, font_=ft_marineconstellation, step_=talkcharstep, draw_=talkchardraw, texteffects_="", namecolor_=c_white) constructor {
	name = name_;
	displayname = displayname_;
	sprite = sprite_;
	talksound = talksound_;
	textspeed = textspeed_;
	font = font_;
	step = step_;
	draw = draw_;
	texteffects = texteffects_;
	namecolor = namecolor_;
	sprcount = 0;
	addspr = function(name_, sprite_=u, animate_=ANIMTYPE.NULL, logic_=c_null) {
		var myfriend = self;
		self[$name_] = {
			val: sprcount,
			sprite: sprite_ == u ? sprite : sprite_,
			animate: animate_,
			logic: logic_,
			char: myfriend,
		}
		sprcount += sprite_ == u;
	}
	
	global.textguy[$name] = self;
}
function talkcharstep() {
	
}
function talkchardraw(pos) {
	x = lerp(x, o_textbox.x+(position-2)*o_textbox.width/5, .065);
	if position != SPRITEPOS.HIDDEN {
		alpha = min(alpha+(1-global.fading*.9), 1);
	} else {
		alpha = max(alpha-(1-global.fading*.9), 0);
	}
	if sprite_get_height(sprite) > 360 {
		draw_sprite_ext(
			sprite, index, x, y,
			ineg(position > SPRITEPOS.CENTER)/3, 1/3, 0,
			//1, 1, 0,
			make_color_hsv(0, 0, 255-(pos>0)*100), alpha
			//c_white, alpha
		);
	} else {
		draw_sprite_ext(
			sprite, index, x, y,
			ineg(position > SPRITEPOS.CENTER), 1, 0,
			//1, 1, 0,
			make_color_hsv(0, 0, 255-(pos>0)*100), alpha
			//c_white, alpha
		);
	}
}

enum ANIMTYPE {
	NULL,
	CONSTANT,
	TALKING,
}