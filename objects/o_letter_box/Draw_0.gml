/// @description Insert description here
// You can write your code in this editor
var player = instance_find(o_Player, 0);
draw_set_color(c_black);
if(player.curr_audio > 1){
	draw_set_color(c_red);
}
draw_set_font(f_scribble);
draw_sprite(s_letter_box,0,x,y);
draw_text_ext(x+10,y+10,sc_filt(text),30,230);
draw_set_color(c_white);
