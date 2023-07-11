function ntxt(wait_=0, sprite_=global.textguy[$"nothingman"].NOTHING, spritepos_=SPRITEPOS.HIDDEN, event_=c_null) {
	return {
		action: function(tid) {
			tid.wait = real(wait);
			event();
			c_charpush(tid, new talkchar(sprite, spriteguy.char.name, spritepos));
		},
		event: event_,
		sprite: sprite_.val,
		spriteguy: sprite_,
		spritepos: spritepos_,
		wait: wait_,
		type: "ntxt",
	};
}

function btxt(backgrounds=[], foregrounds=[], supergrounds=[], bglogic=c_null, fglogic=c_null, sglogic=c_null) {
	var me = {};
	me.action = method(me, function(tid) {
		tid.bg = bgs;
		tid.fg = fgs;
		tid.sg = sgs;
		tid.bglogic = bglogic;
		tid.fglogic = fglogic;
		tid.sglogic = sglogic;
	});
	if typeof(backgrounds) == "array" {
		me.bgs = backgrounds;
	} else me.bgs = [backgrounds];
	if typeof(foregrounds) == "array" {
		me.fgs = foregrounds;
	} else me.fgs = [foregrounds];
	if typeof(supergrounds) == "array" {
		me.sgs = supergrounds;
	} else me.sgs = [supergrounds];
	me.bglogic = bglogic;
	me.fglogic = fglogic;
	me.sglogic = sglogic;
	me.type = "btxt";
	return me;
}

function ptxt(style=global.textstyles.nvl) {
	return {
		action: function(tid) {
			tid.backlog = [];
			tid.tacklog = [];
			tid.x = style.x;
			tid.y = style.y;
			tid.width = style.width;
			tid.height = style.height;
			tid.spriteposy = style.spriteposy;
			//tid.naturaladvance = advancable;
			//tid.advance = advancable;
			//tid.msgscript = textscript;
			tid.sprite_index = style.sprite;
			tid.font = style.font;
			tid.draw = method(tid, style.type);
			tid.style = style;
		},
		type: "ptxt",
		style: style,
	};
}