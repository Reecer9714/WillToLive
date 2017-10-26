#define scr_tile_nearest
///scr_tile_nearest(x,y,type,maxDistance);
var xs = floor(argument0/global.tileSize);
var ys = floor(argument1/global.tileSize);
var type = argument2;
var maxDistance = argument3;
var array;
array[0] = (xs*global.tileSize)+16;
array[1] = (ys*global.tileSize)+16;

//Check start
if(checkPoint(xs,ys,type)) return array;

for(var d = 1; d < maxDistance; d++){
    for(var i = 0; i < d+1; i++){
        var x1 = xs - d+i;
        var y1 = ys - i;
        //Check x1,y1
        if(checkPoint(x1,y1,type)){
            array[0] = (x1*global.tileSize)+16;
            array[1] = (y1*global.tileSize)+16;
            return array;   
        }
        
        var x2 = xs + d-i;
        var y2 = ys + i;
        //Check x2,y2
        if(checkPoint(x2,y2,type)){
            array[0] = (x2*global.tileSize)+16;
            array[1] = (y2*global.tileSize)+16;
            return array;   
        }
    }
    for(var i = 1; i < d; i++){
        var x1 = xs - i;
        var y1 = ys + d-i;
        //Check x1,y1
        if(checkPoint(x1,y1,type)){
            array[0] = (x1*global.tileSize)+16;
            array[1] = (y1*global.tileSize)+16;
            return array;   
        }
        
        var x2 = xs + d-i;
        var y2 = ys - i;
        //Check x2,y2
        if(checkPoint(x2,y2,type)){
            array[0] = (x2*global.tileSize)+16;
            array[1] = (y2*global.tileSize)+16;
            return array;   
        }
    }
}

return -1;

#define checkPoint
///checkPoint(x,y,type)
return (scr_get_tile(argument0,argument1) == argument2)