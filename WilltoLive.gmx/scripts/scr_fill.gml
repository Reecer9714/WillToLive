room_width = global.mapWidth*global.tileSize;
room_height = global.mapHeight*global.tileSize;
var size = global.tileSize;
var w = global.mapWidth;
var h = global.mapHeight;

for(var xx=0; xx<w; xx++){
    for(var yy=0; yy<h; yy++){
        scr_place_terrain(xx*size,yy*size);
        global.tileCount++;
    }
}

