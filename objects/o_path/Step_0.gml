/// @description Insert description here
// You can write your code in this editor
var player = instance_find(o_Player, 0);
if (player.num_removed < 7){
	image_index = 0;
}else if (player.num_removed < 14){
	image_index = 1;
}else{
	image_index = 2;
}