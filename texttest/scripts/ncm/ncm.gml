function ncm(val, count_=count) { //not count mod value
	return !(count_%val);
}

function ncmr(val, low, high, count_=count) { //not count mod value within range
	return ncm(val) && count_ >= low && count_ <= high;
}

function ncml(val, low, repeats, count_=count) { //not count mod value above minimum repeated
	return nam(count_,val) && //if count value is not anything moddable to the provided value
	count_ >= low && //if count is greater than the floor value provided
	count_ <= low+val*repeats; //
}
function ncmltime(val, low, repeats, count_=count) { //not count mod value above minimum repeated duration
	return low+val*repeats;
}

function fdx(val, divisor, multiplier=1) { //floor divided by x
	return floor(val/divisor)*multiplier;
}

function itneg(iterations_=iterations) { //tells you if youre on an odd iteration
	return (iterations_%2)*-2+1;
}
function ineg(i) { //tells you if youre on an odd i
	return (i%2)*-2+1;
}

function ce(val, count_=count) { //count equals value
	return count_ == val;
}

function clt(val, count_=count) { //count less than value
	return count_ < val;
}

function cgt(val, count_=count) { //count greater than value
	return count_ > val;
}