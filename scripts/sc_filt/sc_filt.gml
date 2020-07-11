///@description sc_filt(string)

var all_letters = "abcdefghijklmnopqrstuvwxyz";
var all_letters_caps = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

var str = argument0;
var player = instance_find(o_Player, 0);
var ind = 0;
repeat(25){
	if (!player.letters[ind]){
		//show_debug_message(string_char_at(all_letters, player.letters[ind]));
		//show_debug_message(string_char_at(all_letters_caps, player.letters[ind]));
		str = string_replace_all(str, string_char_at(all_letters, ind+1), "*");
		str = string_replace_all(str, string_char_at(all_letters_caps, ind+1), "*");
	}
	ind = ind+1;
}
return str;