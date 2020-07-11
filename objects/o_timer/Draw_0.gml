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

//Add color changes dependent on current music
xpos = o_Player.x;
ypos = o_Player.y;

draw_text(xpos-40,ypos+40,sc_filt("Time: ") + string(timer/30));
