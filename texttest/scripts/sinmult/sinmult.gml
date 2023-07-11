/**
@deprecated
*/
function sinmult(val, time, multiplier) { //DEPRECIATED: USE easemult() INSTEAD
	return sin(val/(time/3))*multiplier;
}
function cosmult(val, time, multiplier) { //ALSO THE TIME VALUE IS WRONG AND ALWAYS HAS BEEN
	return cos(val/(time/3))*multiplier;
}
function tanmult(val, time, multiplier) { //LOL
	return tan(val/(time/3))*multiplier;
}