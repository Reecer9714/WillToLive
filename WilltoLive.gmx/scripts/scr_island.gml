var array = argument0;
var width = argument1;
var height = argument2;

var xx, yy;

for(xx=0; xx<width; xx++){
    for(yy=0; yy<height; yy++){
        var cur = array[xx + yy * width];
        var dis = sqrt(power(width/2-xx,2)+power(height/2-yy,2))/(width/2);
        var mask = 1 - 1.5*power(dis, 3);
        
        array[xx + yy * width] = (cur + 0.05) * mask;
    }
}

return array
