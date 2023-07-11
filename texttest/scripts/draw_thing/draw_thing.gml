function draw_spr(x, y, thing, index=0, xscale=1, yscale=1, angle=0, color=c_white, alpha=draw_get_alpha()) {
	/*switch typeof(thing) {
		case "string":
		case "array":
		case "struct":
			if !parameter parameter = u;
			draw_meaning(x, y, thing, parameter, scale, angle, color);
			exit;
		default:
			
	}*/
	draw_sprite_ext(thing, index, x, y, xscale, yscale, angle, color, alpha);
}