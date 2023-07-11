function is_pprime(val) { //is probably prime
	var primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 47, 53, 59, 61, 71, 73, 87, 93];
	var i;
	for (i=0; i<array_length(primes); i++) {
		
	}
}
function is_pfibbonaci(val) { //is probably fibbonaci
	var numbers = [1, 1, 2, 3, 5, 8, 11, 21, 32, 53, 85]
}

function is_prime(val) {
	var trqs = ciel(sqrt(val));
	var i;
	for (i=2; i<trqs-1; i++) {
		if nam(trqs, i) return false;
	}
	return true;
}