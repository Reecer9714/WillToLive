//scr_tile_distance(x,y,type,maxDistance)
var nearest = scr_tile_nearest(argument0,argument1,argument2,floor(argument3/global.tileSize))
if(nearest == -1) return argument3;
return point_distance(argument0,argument1,nearest[0],nearest[1]);
