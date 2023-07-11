function gcd(a, b) {
	//https://stackoverflow.com/questions/21570890/java-get-greatest-common-divisor-which-method-is-better
	return b==0 ? a : gcd(b, a%b);
}