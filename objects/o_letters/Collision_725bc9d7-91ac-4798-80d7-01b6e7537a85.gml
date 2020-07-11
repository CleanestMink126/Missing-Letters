/// @description Insert description here
// You can write your code in this editor
var curr_errorx = goalx - x;
var curr_errory = goaly - y;
if ((abs(curr_errorx) + abs(curr_errory))< 50){
	var player = instance_find(o_Player, 0);
	player.letters[image_index] = 1;
	instance_destroy();
}