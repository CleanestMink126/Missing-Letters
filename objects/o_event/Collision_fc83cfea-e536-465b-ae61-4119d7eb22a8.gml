/// @description Insert description here
// You can write your code in this editor
// Kill wasd
var wasd = [22, 0, 18, 3];
var goals = [
[128, 128],
[128, 640],
[842, 308],
[900, 640]
];
var player = instance_find(o_Player, 0);
player.full_ui = true;
var inst;
for(var j=0; j<4;j = j + 1){
	inst = instance_create_layer(x, y, "Player", o_letters);
	player.letters[wasd[j]] = 0;
	with (inst)
	{
		image_index = wasd[j];
		var g = goals[j];
		show_debug_message(g[0]);
		goalx = g[0];
		goaly = g[1];
	}

}
instance_destroy();

