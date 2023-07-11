function function_append(orig, newFunc){
	funcHolder = {
		_func: orig,
		_func2: newFunc,
		doFunc : function(){
			_func()
			_func2()
		}
	}
	return funcHolder.doFunc
}

//undo one layer of appending
function function_unappend(func){
	var methself = method_get_self(func);
	if(is_struct(methself) && variable_struct_exists(methself,"doFunc"))
	return methself._func
}

//completely strips an appended function down to what it was originally.
function function_unappend_full(func){
	var methself = method_get_self(func);
	if(is_struct(methself) && variable_struct_exists(methself,"doFunc"))
	return function_unappend_full(methself._func)
	return func
}

//probably does not work i messed it up lol
//probably DOES work i FIXED it up lol