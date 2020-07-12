
var x_s = irandom_range(0, room_width - 256);
var y_s = irandom_range(0, room_height - 512);
var letter_inst = instance_create_layer(x_s, y_s,"L_Letter", o_letter_box);
var player = instance_find(o_Player, 0);
if (player.curr_audio == 0){
	letter_inst.lifespan = 15;
} else if (player.curr_audio == 1){
	letter_inst.lifespan = 8;
} else if(player.curr_audio == 2){
	letter_inst.lifespan = 6;
} else {
	letter_inst.lifespan = 5;
}


if (room == room0){
	var letter_list = [
		"Dear my love Andrea, \n I miss you so much, come back soon. \n Love, Marie",
		"My dear Marie, \n I will be back soon I just have to pick up some letters I lost. \n Love Andrea",
	];
} else if (room == room1){
	var letter_list = [
		"Dear Andrea, \n Your obsession with letters is unhealthy, just give up and come home already. \n Love, Marie",
		"Marie, \n Why do you not ever support me? This is my one woman show all over again \n -Andrea",
		"Andrea, \n These letters are not necessary, you have to accept losing a few of them, you do not need full control. \n Love, Marie",
		"Marie, \n Just give me five more minutes.  Please let me do this. I swear I’ll be better once it’s over. \n -Andrea"
	];
} else if (room == room2){
	var letter_list = [
		"Marie, \n These controls are necessary for my speed running career. Ill never get WR without them. \n -Andrea",
		"Andrea, \n Youll never get the WR, controls or not, just give up \n Marie",
		"Jesus Andrea \n I cant deal with this anymore. The kids miss you. Eric’s been drawing letters on his bedroom walls to try to lure you in to tell a bedtime story.",
		"Marie? \n Jesus Christ what day is it? How could it.... I swear I just sat ....",
	];
} else if (room == room3){
	var letter_list = [
		"Andrea, \n It’s June 16th. It’s Annie’s birthday. I signed your name on her card.  \n Love, Marie",
		"Andrea, \n You are not you anymore. You are just this obsession.  I ca not do this anymore.",
		"Andrea, \n It would’ve only taken four letters to end this, but instead you’ve done a speed run through our marriage. And it’s game god damn over for me. ",
	];
}
letter_inst.text = letter_list[player.letter_index]
with(player){
	letter_index = (letter_index + 1) % array_length_1d(letter_list);
}