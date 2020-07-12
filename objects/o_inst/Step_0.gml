/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var delta = current_time - time;

if(delta < 4000){
	image_index = 0;
} else if(delta < 4300){
	if(!audio_is_playing(a_break)){
		audio_play_sound(a_break, 3, 0);
	}
	image_index = 1;
} else if(delta < 5000){
	image_index = 0;
} else if(delta < 5300){
	if(!audio_is_playing(a_break)){
		audio_play_sound(a_break, 3, 0);
	}
	image_index = 1;
} else if(delta < 6000){
	image_index = 0;
}else if(delta < 7500){
	if(!audio_is_playing(a_horn2)){
		audio_play_sound(a_horn2, 3, 0);
	}
	image_index = 1;
}else {
	image_index = 0;
}
