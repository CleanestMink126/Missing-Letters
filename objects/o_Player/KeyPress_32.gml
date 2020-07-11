/// @description Insert description here
// You can write your code in this editor
if (point_distance((o_riddle.bbox_right + o_riddle.bbox_left)/2,(o_riddle.bbox_top+o_riddle.bbox_bottom)/2, (o_Player.bbox_left+o_Player.bbox_right)/2,(o_Player.bbox_top+o_Player.bbox_bottom)/2) < 50){
	//player goes into static, puzzle solving state
	instance_change(o_staticPlayer,true);
}