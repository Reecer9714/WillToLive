var value = argument0;
var minFrom = argument1;
var maxFrom = argument2;
var minTo = argument3;
var maxTo = argument4;

return (value - minFrom)*(maxTo-minTo)/(maxFrom-minFrom) + minTo;
