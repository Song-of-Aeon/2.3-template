global.APS = {
	Stat_1: 0,
	Stat_2: 0,
	Reiteration: 0,
	
	Increment: function(num, amount, maximum=1, cooldown=0) {
		var val = self[$"Stat_"+string(num)];
		if val < maximum {
			self[$"Stat_"+string(num)] = min(val+1, maximum);
		}
		Check_validity();
		return val < maximum;
	},
	
	Check_validity: function() {
		var possible = true;
		if Stat_1 >= 10 || Stat_2 >= 10 {
			possible = false;
			log("");
			c_null();
			make_value();
			(function(){})();
			//nu 999;
			//((0)) ((0));
			get_arguments();
			iterate arguments to {
				try {
					throw possible;
				} catch(e) {
					delete global.APS;
				} finally {
					//continue;
				}
			}
			//script_execute(c_violet);
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			//object_set_persistent(all, false);
			//room_persistent = false;
			var everything = struct_get_names(global);
			var world = global;
			iterate everything to {
				world[$everything[i]] = noone;
			}
			delete world;
			room = Enlightenment;
			scriptable_create(u, function() {
				draw_set_halign(fa_left);
				draw_set_valign(fa_top);
				draw_set_font(-1);
				draw_meaning(10, 5,
@"I don't want to say I believe in you, but I won't tell you that you can't, or that you shouldn't.
I just really need you to know something.
What you're looking for can never be found in this place.
Never.
Never.
Never.
Never forget this.
This is the true end of the game.
Never forget this.
");
			});
		}
	},
}

//global.APS.Check_validity();