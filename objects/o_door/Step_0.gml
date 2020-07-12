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

var player = instance_find(o_Player, 0);
if(collision_rectangle(x+60,y+60,x-60,y-60,o_Player,true,false)  != noone){
	if(keyboard_check_pressed(vk_enter)){
		player.can_move = 0;
		result = "";
		count = 1;
		//enter player into puzzle solving state
	}
}
if(collision_rectangle(x+60,y+60,x-60,y-60,o_Player,true,false)  != noone && !player.can_move){
	//add textbox revealing player input here
	instance_create_layer(0,0,"Player",o_textbox);
	o_textbox.text = sc_filt(Riddle);
	o_textbox.x = x-60;
	o_textbox.y = y +80;
	
	if(keyboard_check_pressed(vk_escape)){
		player.can_move = 1;
		result = "";
		count = 1;
		//enter player into not puzzle solving state
	}
}
