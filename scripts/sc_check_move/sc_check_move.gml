
var all_buttons = [
[22, 19, 8],
[18, 6, 10],
[0,5,9],
[3, 7, 11]];
var player = instance_find(o_Player, 0);
var j = 0;
repeat(4){
	var control_button = all_buttons[j];
	var can_move = player.letters[control_button[0]] or player.letters[control_button[1]] or player.letters[control_button[2]];
	if (!can_move){
		return false;
	}
	j++;
}
return true;