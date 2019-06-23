///islandAvoid(triggerDistance)
var dis = argument0;
if scr_tile_distance(x,y,"sand",dis*2) <= dis || scr_tile_distance(x,y,"grass",dis*2) <= dis{
    var nearWater = scr_tile_nearest(x,y,"water",16);
    var moddir = point_direction(room_width/2,room_height/2,x,y); 
    if scr_tile_meeting(x,y,"sand") || scr_tile_meeting(x,y,"grass"){
        moddir = point_direction(x,y,nearWater[0],nearWater[1]);
        targetAlpha = 0;
    }
    dir = lerp(dir, moddir, 0.8);
    spd = 1;
    colliding = true;
}else{
    colliding = false;
}

return colliding;
