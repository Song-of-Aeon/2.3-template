global.txtpreboss = [[[]]];
global.txtpostboss = [[[]]];
global.txtminiboss = [[[]]];
global.txtprologues = [[[]]];
global.badends = [[]];
global.endings = [[]];











nu chardata("nothingman", "", s_null, se_null, 1);
nu chardata("spamton", "spamton g. spamton", s_null);
nu chardata();

/*function chardata(name_="drip", sprite_=s_drip, talksound_=se_null, textspeed_=.5, namecolor_=c_white, texteffects_=[]) constructor {
	name = name_;
	sprite = sprite_;
	talksound = talksound_;
	textspeed = textspeed_;
	namecolor = namecolor_;
	texteffects = texteffects_;
	
	global.textguy[$string_lower(name)] = self;
}*/


#macro from if(0) var a =  //this gets stripped out at compile time.
//SORRY LMAO

from s_reimu16;

enum CHR { //all of these are macros so i gotta do it differently. sorry
	rin,
	
	reimu,
	fortune,
	chiyuri,
	yumemi,
	sumireko,
	marisa,
	maribel,
	kotohime,
	layla,
	
	aunn,
	//aya,
	reisen,
	//megumu,
	doremy,
	//ran,
	
	keine,
	akyuu,
	yorihime,
	mima,
	
	mystery,
	alice,
	shinki,
	
	gengetsu,
	mugetsu,
	yukari,
	
	mike,
	//rinnosuke,
	mystery2,
	kogasa,
	koishi,
	
	renko,
}

var z=0;























global.textguy[$"nothingman"].addspr("NOTHING");


function talksprite(name_, char_, val_) constructor {
	val = val_;
	variable_struct_set(global.textguy[$char_], name_, self);
	char = global.textguy[$char_];
}










