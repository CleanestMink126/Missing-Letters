/// @description Insert description here
// You can write your code in this editor
var j = 0;
var m = 0;
repeat(26){
	m += 1 - letters[j];
	j++;
}
num_removed = m;



if (room == room2){
	var delta = current_time - last_time;
	if (delta > 10000){
		audio_play_sound(a_horn2, 9, 0);
		repeat(5){
			var j = irandom(25);
			if (letters[j]){
				letters[j] = 0;
				if (!sc_check_move()){
					letters[j] = 1;
					continue;
				}
				inst = instance_create_layer(x, y, "Player", o_letters);
				var size = array_length_1d(valid_spaces);
				var space = irandom(size-1);
				var goal = valid_spaces[space];
				show_debug_message(goal);
				with (inst)
				{
					image_index = j;
					goalx = goal[0];
					goaly = goal[1];
				}	
			}
		}
		last_time = current_time;
	}
}

// Audio
var old_audio = curr_audio;
if (num_removed < 3){
	curr_audio = 0;
}else if (num_removed < 7){
	curr_audio = 1;
}else if (num_removed < 14){
	curr_audio = 2;
}else{
	curr_audio = 3;
}
if (old_audio != curr_audio){
	var arr = [a_still, a_slow, a_med, a_fast1];
	audio_group_stop_all(audiogroup1)
	audio_play_sound(arr[curr_audio], 10, 1);
}
