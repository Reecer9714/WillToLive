fishingRod();

if(use){
    var used =false;
    switch(global.inventory[obj_inventory.selected,0]){
        case itemIndex.ibed: instance_create(mouse_x,mouse_y,obj_bed); used = true; break;
        case itemIndex.inet: instance_create(mouse_x,mouse_y,obj_net); used = true; break;
        case itemIndex.icampfire: instance_create(mouse_x,mouse_y,obj_campfire); used = true; break;
        case itemIndex.iraincatcher: instance_create(mouse_x,mouse_y,obj_raincatcher); used = true; break;
    }
    if(used){
        global.inventory[obj_inventory.selected,1]--;
        if global.inventory[obj_inventory.selected,1]==0{
            global.inventory[obj_inventory.selected,0]=itemIndex.inone
        }
    }
}
