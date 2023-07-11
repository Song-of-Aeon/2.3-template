function stunction(func) { //string function
	global.unstuncdfunction = func;
	global.stunction = func;
	junction("global.gmlstunction = global.unstuncdfunction.toString()");
	return global.stunction;
}