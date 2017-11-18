var size = global.tileSize;
var xx = argument0 * size;
var yy = argument1 * size;
var center = (global.mapWidth * global.tileSize) / 2

///Tree Generation
var ran_mod = (point_distance(center,center,xx,yy) / (center*2)) * 15;
ran_mod = clamp(ran_mod,0,12)
//instance_number(obj_tree)+instance_number(obj_boulder)+instance_number(obj_bush)
var ran = irandom(16-ran_mod)
var nearest = instance_nearest(xx,yy, obj_tree);
if (nearest == noone || point_distance(xx,yy,nearest.x,nearest.y) > 64){
    if ran == 0 {
        instance_create(xx,yy,obj_tree)
    }
    if ran == 1 {
        instance_create(xx,yy,obj_bush)
    }
    if ran == 2 {
        instance_create(xx,yy,obj_boulder)
    }
}
