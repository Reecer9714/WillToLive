///Rock Generation
var xx = argument0 * global.tileSize;
var yy = argument1 * global.tileSize;
var ran_mod = instance_number(obj_boulder)
ran_mod = clamp(ran_mod, 0, 12);
var ran = irandom(3+ran_mod)
//No obj_water
//if distance_to_object(obj_tree) > 32{
    if ran = 0 {
        instance_create(xx+16,yy+16,obj_boulder)
    }
//}
