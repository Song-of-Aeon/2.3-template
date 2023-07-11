//https://github.com/Demigiant/dotween/blob/develop/_DOTween.Assembly/DOTween/Core/Easing/EaseManager.cs
#macro _PiOver2 pi/2
#macro _TwoPi pi*2
function ease_Linear(time,duration){
	return time / duration;	
}
function ease_InSine(time,duration){
	return -cos(time / duration * _PiOver2) + 1;
}
function ease_outsine(time,duration){
	return sin(time / duration * _PiOver2);	
}
function ease_inoutsine(time,duration){
	return -0.5 * (cos( pi* time / duration) - 1);	
}
function ease_inquad(time,duration){ //idk if this one works
	time /= duration;
	return time * time;
}
function ease_outquad(time,duration){ //idk if this one works
	time /= duration;
	return -(time) * (time - 2);
}	
function ease_inoutquad(time,duration){
	time /= duration;
	if ((time * 0.5) < 1) return 0.5 * time * time;
     return -0.5 * ((--time) * (time - 2) - 1);	
}
function ease_incubic(time,duration){
	time /= duration;
	return time * time * time;	
}