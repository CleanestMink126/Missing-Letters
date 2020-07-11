/// @description Insert description here
// You can write your code in this editor
if(o_Player.curr_audio = 0){
draw_set_color(c_green);
}
if(o_Player.curr_audio = 1){
draw_set_color(c_white);
}
if(o_Player.curr_audio = 2){
draw_set_color(c_yellow);
}
if(o_Player.curr_audio = 3){
draw_set_color(c_red);
}
if(collision_rectangle(x-20,y-20,x+20,y+20,o_Player,true,false) != noone){
	instance_create_layer(x,y,"Player",o_textbox);
}else{
	instance_destroy(o_textbox,true);
}