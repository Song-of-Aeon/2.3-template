/*function hex2dec(str) {
	var nums = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"]; //always uppercase !
	var val = 0;
	read str out {
		val += array_find_index(nums, string_char_at(str, i))*power(16, i);
	}
	return val;
}*/

function hex2dec(str) { //ITS PERFORMANT. I HATE IT TOO.
	//var nums = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"];
	var val = 0;
	read str out {
		//val += array_find_index(nums, string_char_at(str, i))*power(16, i);
		switch string_char_at(str, i) {
			case "0":
				val += 0*power(16, i);
				break;
			case "1":
				val += 1*power(16, i);
				break;
			case "2":
				val += 2*power(16, i);
				break;
			case "3":
				val += 3*power(16, i);
				break;
			case "4":
				val += 4*power(16, i);
				break;
			case "5":
				val += 5*power(16, i);
				break;
			case "6":
				val += 6*power(16, i);
				break;
			case "7":
				val += 7*power(16, i);
				break;
			case "8":
				val += 8*power(16, i);
				break;
			case "9":
				val += 9*power(16, i);
				break;
			case "A":
			case "a":
				val += 10*power(16, i);
				break;
			case "B":
			case "b":
				val += 11*power(16, i);
				break;
			case "C":
			case "c":
				val += 12*power(16, i);
				break;
			case "D":
			case "d":
				val += 13*power(16, i);
				break;
			case "E":
			case "e":
				val += 14*power(16, i);
				break;
			case "F":
			case "f":
				val += 15*power(16, i);
				break;
		}
	}
	return val;
}
