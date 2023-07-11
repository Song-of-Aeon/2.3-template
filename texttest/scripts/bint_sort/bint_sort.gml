function bint_sort(array){
	function mix(array){
		var mixed = array_create(array_length(array),undefined)
		for(var i = 0; i < array_length(array); i++){
			while(true){
				var randm = irandom(array_length(array)-1);	
				if(mixed[randm] != undefined){
					mixed[randm] = array[i];
					break;
				}
			}
		}
		return mixed;
	}
	function check_sorted(array){
		for(var i = 1; i < array_length(array); i++){
			if(array[i] < array[i-1])
				return 0;
		}
		return 1;
	}
	while(true){
		array = mix(array)
		if check_sorted(array)
			return array;
	}
}