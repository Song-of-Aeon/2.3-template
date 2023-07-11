function draw_reset(docolor=true, doalpha=true, dohalign=true, dovalign=true) {
	if docolor draw_set_color(c_white);
	if doalpha draw_set_alpha(1);
	if dohalign draw_set_halign(fa_left);
	if dovalign draw_set_valign(fa_top);
}