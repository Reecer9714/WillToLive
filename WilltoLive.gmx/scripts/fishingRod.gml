//Fishing Rod
//TODO: Nest
if useDown && global.inventory[obj_inventory.selected,0]==itemIndex.ifishingrod{
    instance_create(x,y,obj_bobber)
}

//TODO: Nest
if useUp && global.inventory[obj_inventory.selected,0]==itemIndex.ifishingrod 
         && instance_exists(obj_bobber){
    if place_meeting(obj_bobber.x,obj_bobber.y,obj_fish){
        addItem(obj_raw_fish)
        instance_destroy(instance_nearest(obj_bobber.x,obj_bobber.y,obj_fish))
    }
    instance_destroy(obj_bobber)
}
