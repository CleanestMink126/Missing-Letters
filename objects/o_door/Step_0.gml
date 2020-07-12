/// @description Insert description here
// You can write your code in this editor
if(collision_rectangle(x+40,y+40,x-40,y-40,o_Player,true,false)  != noone){
	if(keyboard_check_pressed(vk_enter)){
		instance_create_layer(o_Player.x,o_Player.y,"Player",o_staticPlayer);
		instance_destroy(o_Player);
		//enter player into puzzle solving state
	}
}
if(collision_rectangle(x+40,y+40,x-40,y-40,o_staticPlayer,true,false)  != noone){
	if(keyboard_check_pressed(vk_escape)){
		instance_create_layer(o_Player.x,o_staticPlayer.y,"Player",o_Player);
		instance_destroy(o_staticPlayer);
	}
}

