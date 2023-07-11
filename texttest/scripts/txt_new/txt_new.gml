exit;

#macro VOICES global.voices
global.voices = {};

//characters draw to their own surface for postprocessing/lighting/whatever
#macro MACHINA global.textguy[$"machina"]
var parts = {
	poses: {
		standing: {
			base: s_null,
			draw: c_null,
			face: {
				happy: {
					sprite: s_null,
					draw: function() {
						if speaking {
							index += .2;
						} else {
							index = 0;
						}
						draw_spr(x, y, sprite, index, dir, 1, angle, color, alpha);
					},
				},
				irreverent: {
					sprite: s_null,
					behavior: c_null,
					draw: c_null,
				},
			},
			hand: {
				open: {
					sprite: s_null,
					draw: c_null,
				},
				closed: {
					sprite: s_null,
					draw: c_null,
				},
				fingergun: {
					sprite: s_null,
					draw: function() { //timescale .5 unless you are the one talking
						angle = easemult(ac_sin, gc, 300, 10);
						draw_spr(x, y, sprite, index, dir, 1, angle, color, alpha);
					},
				},
			},
		},
		sitting: {
			face: {
				happy: {
					sprite: s_null,
					draw: c_null,
				},
				irreverent: {
					sprite: s_null,
					draw: c_null,
				},
			},
			hand: {
				open: {
					sprite: s_null,
					draw: c_null,
				},
				closed: {
					sprite: s_null,
					draw: c_null,
				},
				fingergun: {
					sprite: s_null,
					draw: c_null,
				},
			},
		},
	}
}
nu chardata("machina", "---", parts, se_null, .4);
MACHINA.addspr("NULL");

VOICES.initialize = {
	texts: [
		{
			text: "for (var i=0; i<∞; i++) {",
			character: MACHINA,
			components: {
				pose: "standing",
				face: "happy",
				hand: "fingergun",
			},
			dir: -1,
			movetype: c_lerptowards,
			position: new vec2(.5, .3),
			events: [[], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], []],
			init: function() {
				music_set(mus.null);
			},
			output: function() {
				if LV >= 19 {
					var scr = VOICES.finalize;
					var pos = 0;
					talkers_clear();
					textbox_goto(scr, pos);
					return true;
				} //if false, continue forward in current textstruct
				try {
					var scr = decrypt_with_saves(/*encrypted chunk reference*/)();
					var fbstart = 43;
					var fbend = 61;
					talkers_clear();
					textbox_flashback(scr, fbstart, fbend);
					return true;
				} catch(e) {
					//do nothing
				}
			},
		},
	],
}