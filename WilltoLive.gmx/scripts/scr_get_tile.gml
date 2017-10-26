var xx = argument0;
var yy = argument1;

//Check for out of bounds
if(xx < 0 || xx > global.mapWidth-1 || yy < 0 || yy > global.mapHeight-1){
    return -1;
}

var elev = global.elevation[xx + yy * global.mapWidth];

if(elev >= 3){
    return "grass";
}else if(elev == 2){
    return "sand";
}else{
    return "water";
}
