
function c_charpush(textbox, char) {
	with textbox {
		var i;
		for (i=0; i<array_length(talkers); i++) {
			if char.name == talkers[i].name {
				if char.position == SPRITEPOS.REPLACE {
					char.position = talkers[i].position;
				}
				char.x = talkers[i].x;
				char.y = talkers[i].y;
				char.alpha = talkers[i].alpha;
				array_delete(talkers, i, 1);
				i--;
			}
		}
		array_insert(talkers, 0, char);
	}
}

function talkchar(spriteindex_=0, name_="nothingman", position_=SPRITEPOS.HIDDEN) constructor {
	sprite = global.textguy[$name_].sprite;
	talksound = global.textguy[$name_].talksound;
	textspeed = global.textguy[$name_].textspeed;
	texteffects = global.textguy[$name_].texteffects;
	font = global.textguy[$name_].font;
	namecolor = global.textguy[$name_].namecolor;
	displayname = global.textguy[$name_].displayname;
	step = global.textguy[$name_].step;
	draw = global.textguy[$name_].draw;
	name = name_;
	index = spriteindex_;
	position = position_;
	x = o_textbox.x+(position-2)*o_textbox.width/5;
	y = o_textbox.spriteposy;
	alpha = 0;
	among = 5;
}