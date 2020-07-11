//Create the list to be equivalent in length to the password string instance variable
var i;
var empt = [];
for (i=0;i<string_length(o_riddle.Password);i++){
	ds_list_add(empt,"");
}


o_riddle.PlayerInput = empt;