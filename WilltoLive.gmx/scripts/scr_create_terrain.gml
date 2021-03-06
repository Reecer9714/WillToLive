//global.elevation = ds_grid_create(room_width/global.tileSize, room_height/global.tileSize)

global.mapWidth = argument0;
global.mapHeight = argument1;
var width = argument0;
var height = argument1;
var elev;
var scaleMap;
var sclWidth = 50;
var sclHeight = 50;

///INITIAL RANDOM VALUES
var timerStart = get_timer();
for(i = sclWidth*sclHeight - 1; i > -1; i--){
    scaleMap[i] = random_range(0,1);//maybe eventually noise
}
show_debug_message("Initial values set in " + string(get_timer() - timerStart));
timerStart = get_timer();

///SMOOTH
//repeat(1){
    scaleMap = scr_smooth(scaleMap, sclWidth, sclHeight)
//}
show_debug_message("Scale map smoothed in " + string(get_timer() - timerStart));
timerStart = get_timer();

///SCALE
for(var xx=0; xx < width; xx++){
    for(var yy=0; yy < height; yy++){
        var sclX = floor(map(xx, 0, width, 0, sclWidth));
        var sclY = floor(map(yy, 0, height, 0, sclHeight));
        elev[xx + yy * width] = scaleMap[sclX + sclY * sclWidth]
    }
}
show_debug_message("Map Scaled up in " + string(get_timer() - timerStart));
timerStart = get_timer();

///ISLAND MASK
elev = scr_island(elev, width, height);

///SMOOTH
repeat(2){
    elev = scr_smooth(elev, width, height);
}
show_debug_message("Map Smoothed in " + string(get_timer() - timerStart));
timerStart = get_timer();



/*
///NORMALIZE
//find max and min
//this might need to happen to the scaledMap
var minElev = 1000;
var maxElev = -1000;
for(i=0; i<array_length_1d(elev); i++){
    if(elev[i] > maxElev) maxElev = elev[i];
    if(elev[i] < minElev) minElev = elev[i];
}
show_debug_message("Found max and min: " + string(minElev) + "->" + string(maxElev)+
 " in " + string(get_timer() - timerStart));
timerStart = get_timer();

//normalize values
for(xx = 0; xx < width; xx++){
    for(yy = 0; yy < height; yy++){
        var val = map(elev[xx + yy * width], minElev, maxElev, 0.0, 1.0);
        elev[xx + yy * width] = val;
    }
}
show_debug_message("Values normalized in " + string(get_timer() - timerStart));
timerStart = get_timer();
*/

/*
for(var xx=0; xx < width; xx++){
    for(var yy=0; yy < height; yy++){
        global.elevation[xx + yy * width] = scr_get_elevation(xx*global.tileSize,yy*global.tileSize);
    }
}
*/

//Set local elevation to global scope
global.elevation = elev;

//Make Tile Layer
scr_add_tiles(width,height);
show_debug_message("Map Filled in " + string(get_timer() - timerStart));
