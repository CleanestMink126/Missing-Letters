/// @description Insert description here
// You can write your code in this editor
var player = instance_find(o_Player, 0);
var delta = current_time - player.last_time;
var time_left = player.pop_time - delta/1000;
if (room == room1 or room == room2 or room == room3){
	if(time_left > 20){
		draw_set_color(c_green);
	} else if(time_left > 10){
		draw_set_color(c_white);
	} else if(time_left > 5){
		draw_set_color(c_yellow);
	} else {
		draw_set_color(c_red);
	}

	//Add color changes dependent on current music
	xpos = player.x;
	ypos = player.y;


	draw_text(xpos-80,ypos+40,sc_filt("Control Loss: ") + string(ceil(time_left)));
}

