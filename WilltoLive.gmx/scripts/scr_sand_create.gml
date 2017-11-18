///Rock Generation
var xx = argument0 * global.tileSize;
var yy = argument1 * global.tileSize;
var ran_mod = instance_number(obj_boulder)
ran_mod = clamp(ran_mod, 0, 10);
var ran = irandom(4+ran_mod)
//No obj_water
if(ran = 0){
    if(distance_to_object(instance_nearest(xx,yy,obj_tree)) > 32){
    if(distance_to_object(instance_nearest(xx,yy,obj_boulder)) > 48){
        instance_create(xx+16,yy+16,obj_boulder)
    }
    }
}
