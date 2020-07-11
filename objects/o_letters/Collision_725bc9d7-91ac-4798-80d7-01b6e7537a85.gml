/// @description Insert description here
// You can write your code in this editor
var curr_errorx = goalx - x;
var curr_errory = goaly - y;
if ((abs(curr_errorx) + abs(curr_errory))< 50){
	var player = instance_find(o_Player, 0);
	player.letters[image_index] = 1;
	instance_destroy();
	
	var j = 0;
	var m = 0;
	repeat(26){
		m += 1 - player.letters[j];
		j++;
	}
	
	if (m == 0 and room == room0){
		room_goto(room2);
		player.x = 670;
		player.y = 640;
	}
}