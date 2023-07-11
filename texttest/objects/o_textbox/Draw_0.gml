//surface_set_target(global.surfaces.HUD);
draw_set_font(font);
for (i=array_length(bg)-1; i>=0; i--) {
	draw_sprite_at(bg[i], count*(sprite_get_speed(bg[i])/60), 0, 0, 640, 360);
}
bglogic();
for (i=array_length(talkers)-1; i>=0; i--) {
	gpu_set_tex_filter(true);
	talkers[i].draw(i);
	gpu_set_tex_filter(false);
}
//surface_reset_target();
surface_set_target(textsurf);
draw_clear_alpha(c_black, 0);
for (i=array_length(fg)-1; i>=0; i--) {
	draw_sprite(fg[i], count*(sprite_get_speed(fg[i])/60), 0, 0);
}
fglogic();
if !halting && !interim draw();
for (i=array_length(sg)-1; i>=0; i--) {
	draw_sprite(sg[i], count*(sprite_get_speed(sg[i])/60), 0, 0);
}
sglogic();
surface_reset_target();
