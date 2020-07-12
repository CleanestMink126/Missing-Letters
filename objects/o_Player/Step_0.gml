/// @description Insert description here
// You can write your code in this editor
var j = 0;
var m = 0;
repeat(26){
	m += 1 - letters[j];
	j++;
}
num_removed = m;

if (room == room1 or room == room2 or room == room3){
	if(array_length_1d(valid_spaces) < 1){
		sc_load_room_goals();
	}
	var delta = current_time - last_time;
	if (delta > pop_time * 1000){
		audio_play_sound(a_horn2, 9, 0);
		repeat(num_pop){
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
	image_index = 0;
}else if (num_removed < 7){
	curr_audio = 1;
	image_index = 0;
}else if (num_removed < 14){
	curr_audio = 2;
	image_index = 1;
}else{
	curr_audio = 3;
	image_index = 2;
}
if (old_audio != curr_audio){
	var arr = [a_still, a_slow, a_med, a_fast1];
	audio_group_stop_all(audiogroup2)
	audio_play_sound(arr[curr_audio], 10, 1);
}
