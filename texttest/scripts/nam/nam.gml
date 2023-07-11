/**
@deprecated use ncm instead
*/
function nam(anything, val) { //not anything mod
	return !(anything%val);
}
/**
@notdeprecated
*/
function ngm(val) { //not global.count mod
	return !(global.count%val);
}