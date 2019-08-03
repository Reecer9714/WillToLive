if(argument0 < 0 || argument0 > global.mapWidth-1 || argument1 < 0 || argument1 > global.mapHeight-1){
    show_debug_message("Out of Bounds ERROR: scr_get_elevation");
    return 0;
}

var elev = global.elevation[argument0+argument1*global.mapWidth]

//TODO: Nest this

if elev >= 0.5 {
    var newElev = map(elev, 0.5, 0.6, 0, 1);

    if(newElev >= 0.66){
        return 5;
    }else if(newElev >= 0.33){
        return 4;
    }
    return 3;
}else if elev >= 0.4{
    return 2
}else if elev >= 0.3{
    return 1
}

return 0

