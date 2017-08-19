var elev = global.elevation[(argument0/global.tileSize) + (argument1/global.tileSize) * global.mapWidth]

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
    return 4
}else if elev >= 0.8 {
    return 5
}
