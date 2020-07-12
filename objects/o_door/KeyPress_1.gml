/// @description Insert description here
// You can write your code in this editor

// Note:only execute if static player is within collision
//1.Check if player has that key
//2. If player has that key, enter it into the list at its designated point
//3. if something is added into the list, move the integer in the list to accept the next input
//4. if the list is full, check it against the password and see if it matches


var player = instance_find(o_Player, 0);
if(collision_rectangle(x+60,y+60,x-60,y-60,o_Player,true,false)  != noone){
	show_debug_message(result);
	if (textbox_id == 0){
		if(keyboard_check_pressed(vk_enter)){
			player.can_move = 0;
			result = "";
			count = 1;
			textbox_id = instance_create_layer(0,0,"Player",o_textbox);
			textbox_id.text = sc_filt("Answer:\n" + sc_text_underline(Password, result));
			textbox_id.x = x-60;
			textbox_id.y = y +80;
			//enter player into puzzle solving state
		}
	} else {
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
		textbox_id.text = sc_filt("Answer:\n" + sc_text_underline(Password, result));
		if(count == string_length(Password)+1){
			player.can_move = 1;
			instance_destroy(textbox_id);
			textbox_id =0;
			if(result == Password){
				audio_play_sound(a_yep, 5, 0);
				instance_destroy();
				sc_trans_room();
			}else{
				audio_play_sound(a_nope, 5, 0);
				result = "";
				count = 1;
			}
			
		}
	}
	
}