///smooth_rotate(degree);
if image_angle != dir {
    image_angle += sin(degtorad(dir - image_angle)) * argument0;
    direction = image_angle;
}else{
    direction = dir;
}
