/// @description Insert description here
// You can write your code in this editor

// I'm sorry this is really bad code.....we only have 48 hours
var h = 768 - 128;
draw_sprite(s_gui_back, 0, 0, h);
draw_set_font(f_gui);
draw_text(10, h+ 10,  sc_filt("MOVE WITH:"));
draw_sprite(s_letters, 22 + (26 * (1-letters[22])), 104, h + 64);
draw_sprite(s_letters, 0 + (26 * (1-letters[0])), 64, h + 104);
draw_sprite(s_letters, 18 +  (26 * (1-letters[18])), 104, h + 104);
draw_sprite(s_letters, 3 + (26 * (1-letters[3])), 144, h +  104);

if (full_ui){
	draw_text(184, h+ 10,  sc_filt("OR WITH:"));
	draw_sprite(s_letters, 19+ (26 * (1-letters[19])), 244, h + 64);
	draw_sprite(s_letters, 5+ (26 * (1-letters[5])), 204, h + 104);
	draw_sprite(s_letters, 6+ (26 * (1-letters[6])), 244, h + 104);
	draw_sprite(s_letters, 7+ (26 * (1-letters[7])), 284, h +  104);
	
	draw_text(324, h+ 10,  sc_filt("OR WITH:"));
	draw_sprite(s_letters, 8 + (26 * (1-letters[8])), 384, h + 64);
	draw_sprite(s_letters, 9 + (26 * (1-letters[9])), 344, h + 104);
	draw_sprite(s_letters, 10 + (26 * (1-letters[10])), 384, h + 104);
	draw_sprite(s_letters, 11 + (26 * (1-letters[11])), 424, h +  104);
	
	draw_text(512, h+ 10,  sc_filt("LOST LETTERS:"));
	var x_miss = 512 + 20;
	var y_miss = h + 64;
	var j = 0;
	repeat(25){
		if (!letters[j]){
				draw_sprite(s_letters, j + 26, x_miss, y_miss);
				x_miss += 42;
		}
		if (x_miss > 1000){
			x_miss = 512 + 20;
			y_miss += 42;
		}
		j++;
	}
}