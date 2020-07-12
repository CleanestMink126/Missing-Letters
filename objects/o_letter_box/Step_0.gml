/// @description Insert description here
// You can write your code in this editor
var delta = current_time - last_time;
if(delta > (lifespan * 1000)){
	instance_destroy();
}