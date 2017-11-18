///scr_tile_position(x,y);
var r;
var xx = floor(argument0 / global.mapWidth);
var yy = floor(argument1 / global.mapHeight);

r[0] = xx * global.tileSize + 16
r[1] = yy * global.tileSize + 16
return r;
