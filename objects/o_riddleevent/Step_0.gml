/// @description Insert description here
// You can write your code in this editor
var p_coll = collision_rectangle(x-20,y-20,x+20,y+20,o_Player,true,false);
if(p_coll != noone and textbox_id == 0){
	textbox_id = instance_create_layer(x,y,"Player",o_textbox);
	textbox_id.text = riddle_text;
}else if (p_coll == noone and textbox_id != 0){
	instance_destroy(textbox_id);
	textbox_id = 0;
}

var player = instance_find(o_Player, 0);
if (player.num_removed < 7){
	image_index = 0;
}else if (player.num_removed < 14){
	image_index = 1;
}else{
	image_index = 2;
}
