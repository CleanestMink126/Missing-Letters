/// @description Insert description here
// You can write your code in this editor
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"))
phy_speed_y = (down - up) * player_speed;

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
phy_speed_x = (right - left) * player_speed;