/// @description Insert description here
// You can write your code in this editor

up = (keyboard_check(ord("W")) * letters[22]) or keyboard_check(ord("T")) * letters[19] or keyboard_check(ord("I")) * letters[8];
down = (keyboard_check(ord("S")) * letters[18]) or keyboard_check(ord("G")) * letters[6] or keyboard_check(ord("K")) * letters[10];
phy_speed_y = (down - up) * player_speed;

left = (keyboard_check(ord("A")) * letters[0]) or keyboard_check(ord("F")) * letters[5] or keyboard_check(ord("J")) * letters[9];
right = (keyboard_check(ord("D"))) * letters[3] or keyboard_check(ord("H")) * letters[7] or keyboard_check(ord("L")) * letters[11];
phy_speed_x = (right - left) * player_speed;
phy_rotation = 90 + arctan2(phy_speed_y, phy_speed_x) * 180 / 3.14159;