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

draw_sprite(s_textbox,0,x,y);

draw_text_ext(x,y,text,30,350);
