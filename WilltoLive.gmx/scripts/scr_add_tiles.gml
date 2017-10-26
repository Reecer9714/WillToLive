room_width = global.mapWidth*global.tileSize;
room_height = global.mapHeight*global.tileSize;
var size = global.tileSize;
var w = global.mapWidth;
var h = global.mapHeight;
var elev = global.elevation;
global.waterTiles = ds_list_create();

for(var xx=0; xx < w; xx++){
    for(var yy=0; yy < h; yy++){
        var elev = scr_get_elevation(xx,yy);     
        var index = 15//scr_tile_rotation(xx,yy);
        global.elevation[xx + yy * w] = elev;
        tile_add(bk_terrain,index * size, elev * size,size,size,xx*size,yy*size,100);
        if(elev >= 3){
            scr_grass_create(xx,yy);
        }else if(elev == 2){
            scr_sand_create(xx,yy);
        }else{
            var loc;
            loc[0] = xx;
            loc[1] = yy;
            ds_list_add(global.waterTiles, loc);
        }
    }
}

ds_list_shuffle(global.waterTiles);
//show_debug_message("Water Tiles: " + string(ds_list_write(global.waterTiles)))
