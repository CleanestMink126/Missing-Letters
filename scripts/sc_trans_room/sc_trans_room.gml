var player = instance_find(o_Player, 0);
player.curr_room++;

if(player.curr_room == 1){
	room_goto(room1);
	with(player){
		x = 540;
		y = 380;
		num_pop = 5;
		pop_time = 15;
		valid_spaces = [];
		letters = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		last_time = 0;
		letter_index = 0;
	}

} else if(player.curr_room == 2){
	room_goto(room2);
	with(player){
		x = 1020;
		y = 420;
		num_pop = 10;
		pop_time = 22;
		valid_spaces = [];
		letters = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		last_time = 0;
		letter_index = 0;
	}
} else if(player.curr_room == 3){
	room_goto(room3);
	with(player){
		x = 670;
		y = 640;
		num_pop = 19;
		pop_time = 35;
		valid_spaces = [];
		player_speed = 10;
		letters = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		last_time = 0;
		letter_index = 0;
	}
}else if(player.curr_room == 4){
	room_goto(win_room);
	instance_destroy(o_timer);
	instance_destroy(o_Player);
}

