function c_null() {
	//log("C NULLING");
	return;
}
log(color_get_red(c_orange), color_get_green(c_orange), color_get_blue(c_orange));
log(color_get_red(c_green), color_get_green(c_green), color_get_blue(c_green));
#macro yeah true
#macro nah false
#macro maybe undefined
#macro nu var newwithouttheassignment = new 
#macro sec *60
#macro otherwise else
#macro u undefined
#macro bul global.bullets
#macro las global.lasers
#macro hsn global.hitscans
#macro chn global.chains
#macro en global.enemies
#macro WIDTH global.gw
#macro HEIGHT global.gh
#macro MIDWID global.gw/2
#macro MIDHEI global.gh/2
#macro c_evil 0x999900
#macro c_pink 0xFF8FFF
#macro c_cyan $ECD919
#macro c_stop $FFA914
#macro c_aolu $FF8080
#macro c_gold $73D1FA
#macro c_violet $E643A0
#macro c_purple $FF0080
#macro c_blue $FF2121
#macro c_green $50fb50
#macro c_brown $1C2554
#macro h_green 80
#macro h_yellow 40
#macro h_cyan 114
#macro h_orange 25
#macro h_blue 140
#macro h_pink 235
#macro h_red 0
#macro h_purple 190
#macro prog for
#macro dial switch
#macro stupidfalse false
#macro stupidtrue true
#macro xnor !xor
#macro funk function
#macro elif else if
#macro endif end
#macro c cpp()
#macro notalot 0.4
#macro some 4
#macro alot 40
#macro abunch 400
#macro ashitton infinity
#macro nothing 0
#macro nada 0
#macro zilch 0
#macro mod_negative cycle
#macro kys instance_destroy()
#macro iterate for (i=0; i<array_length(
#macro to );i++)
#macro read for (var i=1; i<=string_length(
#macro out );i++)
#macro double for (j=0; j<array_length(array_get(
#macro gamble , i));j++)
#macro triple for (k=0; k<array_length(array_get(
#macro trouble , j));k++)
#macro blend gpu_set_blendmode(
#macro from_here )
#macro to_here gpu_set_blendmode(bm_normal)
#macro doblue var notblue = draw_get_color() for(var blue=1; blue>-1; blue--) { if blue draw_set_color(c_aolu) else draw_set_color(notblue) //make doblue use surfaces n shit instead
#macro endblue }
#macro IaN "IaN"
#macro let ;
#macro munc u ^
#macro m u ^ function
#macro sprite_width (sprite_get_width(sprite_index))
#macro sprite_height (sprite_get_height(sprite_index))
#macro canvas surface_set_target(
#macro to_brush )
#macro end_brush surface_reset_target()
#macro get_arguments \
var argcounter; \
var arguments = []; \
for (argcounter=0; argcounter<argument_count; argcounter++) { \
arguments[argcounter] = argument[argcounter]; \
} \
c_null
//#macro if if _GM_LINE_ != 10 && 
//#macro countequals for(var equalize;; if true {ce(equalize) break}) equalize =
//#macro is ==
#macro hunction c_dohook //hook function
#macro dofunc \
for (var printValue;; { \
printValue() \
break; \
}) printValue =
#macro spit \
for (var loggable;; { \
log(loggable) \
break; \
}) loggable =

#macro MY_X ISAAC.visiblex
#macro MY_Y ISAAC.visibley
#macro gc global.count

#macro ongod ;
#macro no not
#macro finna =
#macro deadass return
#macro fr }
#macro straightup {
#macro be ==
#macro sussy false
#macro drippin true
#macro zyzz >
#macro mirin <
#macro lowkey function
#macro ratio_ else if
#macro cap_ break
#macro buss (
#macro tho )
#macro homie new
#macro the var
#macro mf if
#macro trippin for
#macro wit ,

#macro vk_minus 189
#macro vk_equals 187
#macro vk_comma 188
#macro vk_period 190
#macro vk_slash 191
#macro vk_semicolon 186
#macro vk_apostrophe 222
#macro vk_lbracket 219
#macro vk_rbracket 221
#macro vk_backslash 220
#macro vk_tilde 192
#macro vk_central 12

#macro archetype constructor

//#macro vk_ 1

//#macro false (irandom(10000)<2)
//#macro false 1
//#macro true 0
//#macro true infinity
//#macro false NaN
//#macro true 1/0
//#macro false 0/1


/*var testStruct = {bruh:2,skruh:"40"};

var testArray = [2,4,5,7,8];

log(testArray[testStruct])*/

/*function move_dude_to_space(dude, space, allowed_distance) {
	if point_distance(dude.x, dude.y, space.x, space.y) < allowed_distance {
		dude.x = space.x;
		dude.y = space.y;
		return true;
	}
	return false;
}

if mouse_check_button_pressed(mb_left) && selected_dude != noone {
	var space = collision_point(mouse_x, mouse_y, obj_tile, false, false);
	if space == noone exit;
	move_dude_to_space(selected_dude, space, 200);
}*/
