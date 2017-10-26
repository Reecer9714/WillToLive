///scr_tile_meeting(x,y,type)
if(scr_get_tile(floor(argument0/global.tileSize),floor(argument1/global.tileSize)) == argument2){
    return true;
}
return false;
