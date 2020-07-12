
var password = argument0;
var result = argument1;

var diff = string_length(password)- string_length(result);

repeat(diff){
	result += "_";
}
return result;