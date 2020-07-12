/// @description Insert description here
// You can write your code in this editor

// Note:only execute if static player is within collision
//1.Check if player has that key
//2. If player has that key, enter it into the list at its designated point
//3. if something is added into the list, move the integer in the list to accept the next input
//4. if the list is full, check it against the password and see if it matches
var player = instance_find(o_Player, 0);
if(collision_rectangle(x+40,y+40,x-40,y-40,o_staticPlayer,true,false)  != noone){
	if(result = Password){
		instance_destroy(o_door);
	}
	if(keyboard_check_pressed(ord("A")) && player.letters[0] == 1 && count != string_length(Password)){
		result = string_insert("A",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("B")) && player.letters[1] == 1 && count != string_length(Password)){
		result = string_insert("B",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("C")) && player.letters[2] == 1 && count != string_length(Password)){
		result = string_insert("C",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("D")) && player.letters[3] == 1 && count != string_length(Password)){
		result = string_insert("D",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("E")) && player.letters[4] == 1 && count != string_length(Password)){
		result = string_insert("E",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("F")) && player.letters[5] == 1 && count != string_length(Password)){
		result = string_insert("F",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("G")) && player.letters[6] == 1 && count != string_length(Password)){
		result = string_insert("G",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("H")) && player.letters[7] == 1 && count != string_length(Password)){
		result = string_insert("H",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("I")) && player.letters[8] == 1 && count != string_length(Password)){
		result = string_insert("I",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("J")) && player.letters[9] == 1 && count != string_length(Password)){
		result = string_insert("J",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("K")) && player.letters[10] == 1 && count != string_length(Password)){
		result = string_insert("K",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("L")) && player.letters[11] == 1 && count != string_length(Password)){
		result = string_insert("L",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("M")) && player.letters[12] == 1 && count != string_length(Password)){
		result = string_insert("M",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("N")) && player.letters[13] == 1 && count != string_length(Password)){
		result = string_insert("N",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("O")) && player.letters[14] == 1 && count != string_length(Password)){
		result = string_insert("O",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("P")) && player.letters[15] == 1 && count != string_length(Password)){
		result = string_insert("P",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("Q")) && player.letters[16] == 1 && count != string_length(Password)){
		result = string_insert("Q",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("R")) && player.letters[17] == 1 && count != string_length(Password)){
		result = string_insert("R",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("S")) && player.letters[18] == 1 && count != string_length(Password)){
		result = string_insert("S",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("T")) && player.letters[19] == 1 && count != string_length(Password)){
		result = string_insert("T",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("U")) && player.letters[20] == 1 && count != string_length(Password)){
		result = string_insert("U",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("V")) && player.letters[21] == 1 && count != string_length(Password)){
		result = string_insert("V",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("W")) && player.letters[22] == 1 && count != string_length(Password)){
		result = string_insert("W",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("X")) && player.letters[23] == 1 && count != string_length(Password)){
		result = string_insert("X",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("Y")) && player.letters[24] == 1 && count != string_length(Password)){
		result = string_insert("Y",result,count)
		count += 1;
	}
	if(keyboard_check_pressed(ord("Z")) && player.letters[25] == 1 && count != string_length(Password)){
		result = string_insert("Z",result,count)
		count += 1;
	}
	
}