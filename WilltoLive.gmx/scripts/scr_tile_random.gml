#define scr_tile_random
var type = argument0;
if(type == "water") return scr_tile_random_water();

var testType;
do{
    var xx = irandom(global.mapWidth-1);
    var yy = irandom(global.mapHeight-1);
    testType = scr_get_tile(xx,yy);
}until(testType == type);

var r;
r[0] = (xx * global.tileSize)+16;
r[1] = (yy * global.tileSize)+16;

return r;

#define scr_tile_random_water
var index = irandom(ds_list_size(global.waterTiles)-1);
var loc = ds_list_find_value(global.waterTiles,index);

var r;
r[0] = (loc[0] * global.tileSize)+16;
r[1] = (loc[1] * global.tileSize)+16;

return r;