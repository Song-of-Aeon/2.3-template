//

//surface_set_target(global.surfaces.HUD);
gpu_set_blendmode(bm_add)
draw_surface(textsurf, 0, 0); //draw once to set the alpha to the correct amount
gpu_set_blendmode(bm_normal)
gpu_set_colorwriteenable(1,1,1,0);
draw_surface(textsurf, 0, 0); //draw the second time without alpha
gpu_set_colorwriteenable(1,1,1,1);
//surface_reset_target();

//
