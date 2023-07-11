function c_heal(amount_) {
	with ISAAC {
		amount = amount_;
		if c_dohook(hooks.onheal, global.me, amount) exit;
		hp += amount;
	}
}