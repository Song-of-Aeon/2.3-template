function lapp(val, goal, amount) { //linear_approach()
	if abs(val-goal) < amount val = goal;
	if val < goal return val+amount;
	if val > goal return val-amount;
	if val == goal return goal;
}
function derp(val, origin, amount) { //de-lerp()
	return 1/(val-origin)*amount
}
