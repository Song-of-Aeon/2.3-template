randomize();

global.gw = 290;
global.gh = 340;
global.ratio = global.gh/global.gw;
global.textguy = {};
global.fading = false;
global.volume = 100;
global.music = 100;

global.marineconstellation = font_add_sprite_ext(fts_marineconstellation,
	"!\"#$%&'()*+,-"+
	"./0123456789:"+
	";<=>?@ABCDEFG"+
	"HIJKLMNOPQRST"+
	"UVWXYZ[\\]^_`a"+
	"bcdefghijklmn"+
	"opqrstuvwxyz{"+
	"|}~ÁÉÍÓÚÄËÏÖÜ"+
	"áéíóúäüïöëÑñı"+
	"ẞßÆæ¡¿♫♪☯東方青赤"+
	"紫果世外♥¬ඞ⬠⬏†‡¦§"+
	"⑴⑵⑶⑷⑸⑹⑺⑻⑼⑽⑾⑿±"+ //f keys
	"０１２３４５６７８９☺☹�"+ //numpad
	"⓿❶❷❸❹❺❻❼❽❾❿��"+ //fez numbers
	"ＡＢＣＤＥＦＧＨＩＪＫＬＭ"+ //fez script
	"ＮＯＰＱＲＳＴＵＶＷＸＹＺ"+ //fez script
	"⓪①②③④⑤⑥⑦⑧⑨�⭠⭣"+ //balls
	"⭡⭢⮡⮽⮠⭰⭲⭱⭳⬚⮔　"+
	""+
	""+
	""+
	""+
	""+
	"", true, 1);
#macro ft_marineconstellation global.marineconstellation

globalvar ft_zpix;
ft_zpix = font_add("fonts/zpix.ttf",9,false,false,32,1111111);

enum DESTROYSHAPE {
	CIRCLE,	
	EVERYTHING,
	UP,
	DOWN,
	RANDOM,
	SPIRAL,
}

global.version = "ver. 0.7." + string(GM_build_date);
global.gameobjectvariables = [
	"speed", "direction", "xprevious", "yprevious", "image_index", "image_xscale", "image_yscale", "image_blend", "image_index"
]

