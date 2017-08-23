var xx = argument0;
var yy = argument1;

var elevation = scr_get_elevation(xx,yy)

switch(elevation){
    case 0: 
        var obj = instance_create(xx,yy,obj_water)
        with(obj){
            image_index=1
        }
    break;
    case 1: 
        instance_create(xx,yy,obj_water)
    break;
    //Terrain
    case 2:
        instance_create(xx,yy,obj_sand)
    break;
    case 3:
    case 4:
    case 5:
        var obj = instance_create(xx,yy,obj_grass)
        with(obj){
            image_index=1
        }
    break;
}
