/// @description Insert description here
// You can write your code in this editor
var player = instance_find(o_Player, 0);
if(player.curr_audio = 0){
draw_set_color(c_green);
}
if(player.curr_audio = 1){
draw_set_color(c_white);
}
if(player.curr_audio = 2){
draw_set_color(c_yellow);
}
if(player.curr_audio = 3){
draw_set_color(c_red);
}
draw_set_font(f_textbox);
draw_sprite(s_textbox,0,x,y);

draw_text_ext(x+6,y+6,sc_filt(text),30,336);
