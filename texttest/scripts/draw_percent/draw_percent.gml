// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_percent(x,y,sprite,subimg,percent){
	var percSurf = surface_create(sprite_get_width(sprite),sprite_get_height(sprite));
	surface_set_target(percSurf);
	draw_clear_alpha(c_black,0.0);
	//draw_sprite(sprite,subimg,0,0);
	draw_sprite_stretched(sprite,subimg,0,0,sprite_get_width(sprite),sprite_get_height(sprite))
	surface_reset_target();
	shader_set(z_draw_percent);
	shader_set_uniform_f(shader_get_uniform(z_draw_percent,"percent"),percent)
	draw_surface(percSurf,x,y);
	surface_free(percSurf);
	shader_reset();
}