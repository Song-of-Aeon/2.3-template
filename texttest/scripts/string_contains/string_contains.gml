function string_contains(str,contains){
	for(var i = 1; i <= string_length(str)+1; i++){
		for(var j = 1; j <= string_length(contains)+1;j++){
			if(string_char_at(str,i+j-1) != string_char_at(contains,j)){
				break;
			}
			if(j == string_length(contains)){
				return true;
			}
		}
	}
	return false;
}