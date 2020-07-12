/// @description Insert description here
// You can write your code in this editor

// Note:only execute if static player is within collision
//1.Check if player has that key
//2. If player has that key, enter it into the list at its designated point
//3. if something is added into the list, move the integer in the list to accept the next input
//4. if the list is full, check it against the password and see if it matches
var player = instance_find(o_Player, 0);
if(collision_rectangle(x+60,y+60,x-60,y-60,o_Player,true,false)  != noone && !player.can_move){
	show_debug_message(result);
	var all_letters_caps = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	var ind = 0;
	repeat(25){
		var c = string_char_at(all_letters_caps, ind+1);
		if(keyboard_check_pressed(ord(c)) && player.letters[ind]  && count != string_length(Password)+1){
			result = string_insert(c,result,count)
			count += 1;
		}
		ind++;
	}
	if(count == string_length(Password)+1){
		if(result == Password){
			instance_destroy();
		}else{
			result = "";
			count = 1;
		}
		player.can_move = 1;
	}
}