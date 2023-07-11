function x_fontsetup() {}

var langdif = 16;

global.fontset = [];
global.fontset[FONT.TALK] = ft_marineconstellation
global.fontset[FONT.TERMINAL] = ft_marineconstellation;


enum FONT {
	NULL,
	TALK,
	UI,
	H2,
	H3,
	TITLE,
	TERMINAL,
}
