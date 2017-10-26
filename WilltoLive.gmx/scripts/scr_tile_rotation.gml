var xx = argument0;
var yy = argument1;

var north, south, east, west, cur;
cur = scr_get_elevation(xx,yy);
north = (scr_get_elevation(xx,yy-1) == cur);
south = (scr_get_elevation(xx,yy+1) == cur);
east = (scr_get_elevation(xx+1,yy) == cur);
west = (scr_get_elevation(xx-1,yy) == cur);

var index = 1*north + 2*west + 4*east + 8*south;

return index;
