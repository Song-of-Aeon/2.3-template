function keyname(key, lower=false) {
	return typeof(key) == "string" ? key + " key" : (lower ? string_lower(global.vkkeys[key]) : global.vkkeys[key]);
}

function namekey(name) {
	return typeof(key) == "string" ? key : array_find_index(global.vkkeys, name);
}

function keychar(key) {
	return typeof(key) == "string" ? key : global.vkchars[key];
}
global.vkkeys = array_create(300, "idk lol");

global.vkkeys[vk_nokey] = "Nothing";
global.vkkeys[vk_anykey] = "Anything";
global.vkkeys[vk_left] = "Left arrow";
global.vkkeys[vk_right] = "Right arrow";
global.vkkeys[vk_up] = "Up arrow";
global.vkkeys[vk_down] = "Down arrow";
global.vkkeys[vk_enter] = "Enter";
global.vkkeys[vk_escape] = "Escape";
global.vkkeys[vk_space] = "Space";
global.vkkeys[vk_shift] = "Shift";
global.vkkeys[vk_control] = "Control";
global.vkkeys[vk_alt] = "Alt";
global.vkkeys[vk_backspace] = "Backspace";
global.vkkeys[vk_tab] = "Tab";
global.vkkeys[vk_home] = "Home";
global.vkkeys[vk_end] = "End";
global.vkkeys[vk_delete] = "Delete";
global.vkkeys[vk_insert] = "Insert";
global.vkkeys[vk_pageup] = "Page up";
global.vkkeys[vk_pagedown] = "Page down";
global.vkkeys[vk_pause] = "Break";
global.vkkeys[vk_printscreen] = "Print screen";
global.vkkeys[vk_f1] = "F1";
global.vkkeys[vk_f2] = "F2";
global.vkkeys[vk_f3] = "F3";
global.vkkeys[vk_f4] = "F4";
global.vkkeys[vk_f5] = "F5";
global.vkkeys[vk_f6] = "F6";
global.vkkeys[vk_f7] = "F7";
global.vkkeys[vk_f8] = "F8";
global.vkkeys[vk_f9] = "F9";
global.vkkeys[vk_f10] = "F10";
global.vkkeys[vk_f11] = "F11";
global.vkkeys[vk_f12] = "F12";
global.vkkeys[vk_numpad0] = "Numpad 0";
global.vkkeys[vk_numpad1] = "Numpad 1";
global.vkkeys[vk_numpad2] = "Numpad 2";
global.vkkeys[vk_numpad3] = "Numpad 3";
global.vkkeys[vk_numpad4] = "Numpad 4";
global.vkkeys[vk_numpad5] = "Numpad 5";
global.vkkeys[vk_numpad6] = "Numpad 6";
global.vkkeys[vk_numpad7] = "Numpad 7";
global.vkkeys[vk_numpad8] = "Numpad 8";
global.vkkeys[vk_numpad9] = "Numpad 9";
global.vkkeys[vk_multiply] = "Asterisk";
global.vkkeys[vk_divide] = "Numpad slash";
global.vkkeys[vk_add] = "Numpad plus";
global.vkkeys[vk_subtract] = "Numpad minus";
global.vkkeys[vk_decimal] = "Numpad period";
global.vkkeys[vk_lshift] = "Left shift";
global.vkkeys[vk_lcontrol] = "Left control";
global.vkkeys[vk_lalt] = "Left alt";
global.vkkeys[vk_rshift] = "Right shift";
global.vkkeys[vk_rcontrol] = "Right control";
global.vkkeys[vk_ralt] = "Right alt";

global.vkkeys[vk_minus] = "Minus";
global.vkkeys[vk_equals] = "Equals";
global.vkkeys[vk_comma] = "Comma";
global.vkkeys[vk_period] = "Period";
global.vkkeys[vk_slash] = "Slash";
global.vkkeys[vk_semicolon] = "Semicolon";
global.vkkeys[vk_apostrophe] = "Apostrophe";
global.vkkeys[vk_lbracket] = "Left bracket";
global.vkkeys[vk_rbracket] = "Right bracket";
global.vkkeys[vk_backslash] = "Backslash";
global.vkkeys[vk_tilde] = "Tilde";
global.vkkeys[vk_central] = "I don't know what the numpad center key is called or does but this is it";


global.vkchars = array_create(300, "⑨");

global.vkchars[vk_nokey] = " ";
global.vkchars[vk_anykey] = "ඞ";
global.vkchars[vk_left] = "⭠";
global.vkchars[vk_right] = "⭢";
global.vkchars[vk_up] = "⭡";
global.vkchars[vk_down] = "⭣";
global.vkchars[vk_enter] = "⮡";
global.vkchars[vk_escape] = "⮽";
global.vkchars[vk_space] = "⬠";
global.vkchars[vk_shift] = "⬏";
global.vkchars[vk_control] = "†";
global.vkchars[vk_alt] = "‡";
global.vkchars[vk_backspace] = "⮠";
global.vkchars[vk_tab] = "¬";
global.vkchars[vk_home] = "⭰";
global.vkchars[vk_end] = "⭲";
global.vkchars[vk_delete] = "¦";
global.vkchars[vk_insert] = "§";
global.vkchars[vk_pageup] = "⭱";
global.vkchars[vk_pagedown] = "⭳";
global.vkchars[vk_pause] = "⬚";
global.vkchars[vk_printscreen] = "⮔";
global.vkchars[vk_f1] = "⑴";
global.vkchars[vk_f2] = "⑵";
global.vkchars[vk_f3] = "⑶";
global.vkchars[vk_f4] = "⑷";
global.vkchars[vk_f5] = "⑸";
global.vkchars[vk_f6] = "⑹";
global.vkchars[vk_f7] = "⑺";
global.vkchars[vk_f8] = "⑻";
global.vkchars[vk_f9] = "⑼";
global.vkchars[vk_f10] = "⑽";
global.vkchars[vk_f11] = "⑾";
global.vkchars[vk_f12] = "⑿";
global.vkchars[vk_numpad0] = "０";
global.vkchars[vk_numpad1] = "１";
global.vkchars[vk_numpad2] = "２";
global.vkchars[vk_numpad3] = "３";
global.vkchars[vk_numpad4] = "４";
global.vkchars[vk_numpad5] = "５";
global.vkchars[vk_numpad6] = "６";
global.vkchars[vk_numpad7] = "７";
global.vkchars[vk_numpad8] = "８";
global.vkchars[vk_numpad9] = "９";
global.vkchars[vk_multiply] = "*";
global.vkchars[vk_divide] = "/";
global.vkchars[vk_add] = "+";
global.vkchars[vk_subtract] = "-";
global.vkchars[vk_decimal] = ".";
global.vkchars[vk_lshift] = "Left shift";
global.vkchars[vk_lcontrol] = "Left control";
global.vkchars[vk_lalt] = "Left alt";
global.vkchars[vk_rshift] = "Right shift";
global.vkchars[vk_rcontrol] = "Right control";
global.vkchars[vk_ralt] = "Right alt";

global.vkchars[vk_minus] = "-";
global.vkchars[vk_equals] = "=";
global.vkchars[vk_comma] = ",";
global.vkchars[vk_period] = ".";
global.vkchars[vk_slash] = "/";
global.vkchars[vk_semicolon] = ";";
global.vkchars[vk_apostrophe] = "'";
global.vkchars[vk_lbracket] = "[";
global.vkchars[vk_rbracket] = "]";
global.vkchars[vk_backslash] = "\\";
global.vkchars[vk_tilde] = "`";
global.vkchars[vk_central] = "　";

