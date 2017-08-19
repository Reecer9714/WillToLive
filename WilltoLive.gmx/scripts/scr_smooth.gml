var array = argument0;
var width = argument1;
var height = argument2;

var left, right, up, down, yyy, xxx, yy, xx, new;

for(xx=0; xx<width; xx++){
    for(yy=0; yy<height; yy++){
        
        if (xx <= 0){ left = 0;}else{
            left = array[(xx-1) + yy * width];
        }
        if (xx >= width-1){ right = 0;}else{
            right = array[(xx+1) + yy * width];
        }
        if (yy <= 0){ up = 0;}else{
            up = array[xx + (yy-1) * width];
        }
        if (yy >= height-1){ down = 0;}else{
            down = array[xx + (yy+1) * width];
        }
        
        yyy = lerp(up,down,0.5);
        xxx = lerp(left,right,0.5);
        
        new = lerp(yyy,xxx,0.5)//random(0.8)+0.1);

        array[xx + yy * width] = new;
    }
}

return array;
