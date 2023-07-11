// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function draw_outline_better(sprite,image,red,green,blue,alpha,outlineWidth,x,y){
		var mathsw = sprite_get_width(sprite)+(outlineWidth*2);
		var surf = surface_create(mathsw,mathsw);
		var surf2 = surface_create(mathsw,mathsw);
		surface_set_target(surf2);
		draw_clear_alpha(c_black,0);
		surface_reset_target();
		surface_set_target(surf);
		draw_clear_alpha(c_black,0);	

		draw_outline_nofunc_sprite(sprite,image,red,green,blue,alpha,1,mathsw/2,mathsw/2);
		surface_reset_target();
		
		repeat(outlineWidth){
			surface_set_target(surf2);
			draw_outline_nofunc_surface(surf,red,green,blue,alpha,1,0,0);
			surface_reset_target();
			var temp = surf2;
			surf2 = surf
			surf = temp;
		}
		draw_surface(surf,x- sprite_get_xoffset(sprite)-outlineWidth ,y-sprite_get_yoffset(sprite)-outlineWidth);
		surface_free(surf);
		surface_free(surf2);
		
		draw_sprite(sprite, image, x, y);
}

function draw_outline(sprite,image,red,green,blue,alpha,outlineWidth,func){
	shader_set(z_outline);
	static uniw = shader_get_uniform(z_outline,"pixelW");
	static unih = shader_get_uniform(z_outline,"pixelH");
	static unicol = shader_get_uniform(z_outline,"theColor");
	static uniprog = shader_get_uniform(z_outline,"progress");
	static unioutline = shader_get_uniform(z_outline,"outlineSize");
	
	shader_set_uniform_f(uniw,texture_get_texel_width(sprite_get_texture(sprite,image)));
	shader_set_uniform_f(unih,texture_get_texel_height(sprite_get_texture(sprite,image)));
	shader_set_uniform_f(unicol,red,green,blue,alpha);
	shader_set_uniform_f(uniprog,1);
	shader_set_uniform_f(unioutline,outlineWidth);

	func();
	
	shader_reset();
}

function draw_outline_nofunc_sprite(sprite,image,red,green,blue,alpha,outlineWidth,x,y){
	shader_set(z_outline);
	static uniw = shader_get_uniform(z_outline,"pixelW");
	static unih = shader_get_uniform(z_outline,"pixelH");
	static unicol = shader_get_uniform(z_outline,"theColor");
	static uniprog = shader_get_uniform(z_outline,"progress");
	static unioutline = shader_get_uniform(z_outline,"outlineSize");
	
	shader_set_uniform_f(uniw,texture_get_texel_width(sprite_get_texture(sprite,image)));
	shader_set_uniform_f(unih,texture_get_texel_height(sprite_get_texture(sprite,image)));
	shader_set_uniform_f(unicol,red,green,blue,alpha);
	shader_set_uniform_f(uniprog,1);
	shader_set_uniform_f(unioutline,outlineWidth);

	draw_sprite(sprite,image,x,y);
	
	shader_reset();
}

function draw_outline_nofunc_surface(surf,red,green,blue,alpha,outlineWidth,x,y){
	shader_set(z_outline);
	static uniw = shader_get_uniform(z_outline,"pixelW");
	static unih = shader_get_uniform(z_outline,"pixelH");
	static unicol = shader_get_uniform(z_outline,"theColor");
	static uniprog = shader_get_uniform(z_outline,"progress");
	static unioutline = shader_get_uniform(z_outline,"outlineSize");
	
	shader_set_uniform_f(uniw,texture_get_texel_width(surface_get_texture(surf)));
	shader_set_uniform_f(unih,texture_get_texel_height(surface_get_texture(surf)));
	shader_set_uniform_f(unicol,red,green,blue,alpha);
	shader_set_uniform_f(uniprog,1);
	shader_set_uniform_f(unioutline,outlineWidth);

	draw_surface(surf,x,y);
	
	shader_reset();
}

function draw_text_outline(x,y,width,height,red,green,blue,alpha,outlineWidth,func){
	var bitches = surface_create(width, height);
	surface_set_target(bitches);
	draw_clear_alpha(c_black, 0);

	func();
	
	shader_set(z_outline);
	static uniw = shader_get_uniform(z_outline,"pixelW");
	static unih = shader_get_uniform(z_outline,"pixelH");
	static unicol = shader_get_uniform(z_outline,"theColor");
	static uniprog = shader_get_uniform(z_outline,"progress");
	static unioutline = shader_get_uniform(z_outline,"outlineSize");
	
	shader_set_uniform_f(uniw,texture_get_texel_width(surface_get_texture(bitches)));
	shader_set_uniform_f(unih,texture_get_texel_height(surface_get_texture(bitches)));
	shader_set_uniform_f(unicol,red,green,blue,alpha);
	shader_set_uniform_f(uniprog,1);
	shader_set_uniform_f(unioutline,outlineWidth);
	
	surface_reset_target();
	draw_surface(bitches, x, y);
	surface_free(bitches);
	shader_reset();
}
//number between 1 and 360
function draw_outline_progress(x,y,width,height,red,green,blue,alpha,progress,outlineWidth, func){
	var bitches = surface_create(width, height);
	surface_set_target(bitches);
	draw_clear_alpha(c_black, 0);
	func();
	shader_set(z_outline);
	static uniw = shader_get_uniform(z_outline,"pixelW");
	static unih = shader_get_uniform(z_outline,"pixelH");
	static unicol = shader_get_uniform(z_outline,"theColor");
	static uniprog = shader_get_uniform(z_outline,"progress");
	static unioutline = shader_get_uniform(z_outline,"outlineSize");
	
	shader_set_uniform_f(uniw,texture_get_texel_width(surface_get_texture(bitches)));
	shader_set_uniform_f(unih,texture_get_texel_height(surface_get_texture(bitches)));
	shader_set_uniform_f(unicol,red,green,blue,alpha);
	shader_set_uniform_f(uniprog,progress/360)
	shader_set_uniform_f(unioutline,outlineWidth);
	
	surface_reset_target();
	draw_surface(bitches, x, y);
	surface_free(bitches);
	shader_reset();
}