//REPLACED IN JSREPLACEMENTS
function particle_self(duration=20, style=TRAILTYPE.SHRINK, sizemult=1, spin=0) {
	var guy = c_shoot(x, y, 0, dir, type, color, munction(partselfstep),u,u,true);
	rescale(guy, sizemult);
	guy.alpha = image_alpha;
	guy.decay = 1/duration;
	guy.friendly = NaN;
	guy.style = style;
	guy.spin = spin;
	guy.particling = true;
	guy.dir = dir;
	return guy;
}
//REPLACED IN JSREPLACEMENTS
 function partselfstep() {
	dir += spin;
	if style == TRAILTYPE.SHRINK {
		rescale(self, scale-decay);
	} else if style == TRAILTYPE.VANISH alpha -= decay;
	if scale <= 0|| alpha <= 0 {
		kys;
	}
}

enum TRAILTYPE {
	VANISH,
	SHRINK,
}

function c_bultrail(ncm_=4, duration=20, style=TRAILTYPE.SHRINK, sizemult=1) {
	//if behavior == c_bultrail c;
	if count%ncm_ exit;
	var notguy = particle_self(duration, style, sizemult);
	notguy.particling = true;
	//if colorcover == s_null exit;
	//var guy = particle_self(duration, style, sizemult);
	//guy.sprite = colorcover;
	//guy.color = color;
	//guy.particling = true;
	//return [notguy, guy];
	return notguy;
}