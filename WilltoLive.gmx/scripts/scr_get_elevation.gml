if(argument0 < 0 || argument0 > global.mapWidth-1 || argument1 < 0 || argument1 > global.mapHeight-1){
    show_debug_message("Out of Bounds ERROR: scr_get_elevation");
    return 0;
}

var elev = global.elevation[argument0+argument1*global.mapWidth]

//TODO: Nest this
if elev < 0.3{
    return 0
}else if elev >= 0.3 && elev < 0.4{
    return 1
}else if elev >= 0.4 && elev < 0.5{
    return 2
}else if elev >= 0.5 && elev < 0.7{
    return 3
}else if elev >= 0.7 && elev < 0.8{
    return 3
}else if elev >= 0.8 {
    return 3
}
