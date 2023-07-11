function draw_hitbox(obj){
	with(obj){
		var bbox_width = sprite_get_bbox_left(sprite_index)  - sprite_get_bbox_right(sprite_index)
		bbox_width = abs(bbox_width)
		draw_circle_width((bbox_left+bbox_right)/2,(bbox_top+bbox_bottom)/2,bbox_width,global.scale,true)
	}
}