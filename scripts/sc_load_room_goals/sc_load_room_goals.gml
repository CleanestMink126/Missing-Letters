var x_p = 32;
var y_p = 32;
var valid_spaces;
var j = 0;
var player = instance_find(o_Player, 0);
while (y_p < room_height){
	while (x_p < room_width){
		show_debug_message(y_p);
		if (place_free(x_p, y_p)){
			valid_spaces[j] = [x_p, y_p];
			j++;
		}
		x_p += 32;
	}
	x_p = 32;
	y_p += 32;
}
show_debug_message("Valid Spaces Calculated")
show_debug_message(valid_spaces)
player.valid_spaces = valid_spaces;