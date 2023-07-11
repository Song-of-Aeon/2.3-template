function keyboard_check_advanced() {
	if keyboard_check(vk_anykey) {
		if keyboard_key = holding {
			count++;
			if count >= 30 {
				keyboard_check_advanced = keyboard_check;
			}
		} else {
			keyboard_check_advanced = keyboard_check_pressed;
			count = 0;
		}
		holding = keyboard_key;
		show_debug_message(currentpos);
	} else {
		keyboard_check_advanced = keyboard_check_pressed;
		count = 0;
	}
}

function keyboard_check_repeat(key){
	var repeatDelay= 2;
	var heldDelay = 30;
	static keyboardCheckRepeater = makeEmptyKeyArray();
	if(keyboard_check_pressed(key) || array_length(keyboardCheckRepeater) <= key ){
		keyboardCheckRepeater[key] = {count: 0,repeating: false};
		return true;
	}
	if(keyboard_check(key)){
		var keyStruct = keyboardCheckRepeater[key];
		log(keyStruct);
		keyStruct.count++;
		if(keyStruct.repeating){
			if(keyStruct.count > repeatDelay){ //held 
				keyStruct.count = 0;
				return true;
			}
		}
		else{
			if(keyStruct.count > heldDelay){
				keyStruct.count = 0;
				keyStruct.repeating = true;
				return true;
			}
		}
	}
}

function makeEmptyKeyArray(){
	var array = [];
	for(var i = 0; i < 400; i ++){ //there re probably not less than 400 keys lol
		array[i] = {count: 0,repeating: false};
	}
	return array;
}
