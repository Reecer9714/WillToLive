///move_towards_object(object, speed)
dis = point_distance(x,y,argument0.x,argument0.y)
dir = point_direction(x,y,argument0.x,argument0.y)
spd = min(dis,argument1)

move_towards_point(argument0.x,argument0.y,spd)
