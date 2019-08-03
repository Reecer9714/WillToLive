//Fishing Rod
//TODO: Nest
if useDown && getInventorySelected(obj_player.inventory) == itemIndex.ifishingrod{
    instance_create(x,y,obj_bobber)
}

//TODO: Nest
if useUp && getInventorySelected(obj_player.inventory) == itemIndex.ifishingrod 
         && instance_exists(obj_bobber){
    if place_meeting(obj_bobber.x,obj_bobber.y,obj_fish){
        addItem(obj_raw_fish, obj_player.inventory)
        var stats = global.stats;
        var num = ds_map_find_value(stats,"fish") + 1;
        ds_map_replace(stats,"fish",num);
        instance_destroy(instance_nearest(obj_bobber.x,obj_bobber.y,obj_fish))
    }
    instance_destroy(obj_bobber)
}
