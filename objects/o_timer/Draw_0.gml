/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
xpos = o_Player.x;
ypos = o_Player.y;

draw_text(xpos-40,ypos+40,"Time: " + string(timer/30));
