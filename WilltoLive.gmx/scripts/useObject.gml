var inv = obj_player.inventory;
if(use){
    var item = getInventorySelected(inv);
    used = false;
    switch(item){
        case itemIndex.ibed: 
            if(!scr_tile_meeting(mouse_x,mouse_y,"water")){
                instance_create(mouse_x,mouse_y,obj_bed);
                used = true;
            }break;
        case itemIndex.inet:
            if(scr_tile_meeting(mouse_x,mouse_y,"water")){
                instance_create(mouse_x,mouse_y,obj_net);
                used = true;
            }break;
        case itemIndex.icampfire:
            if(!scr_tile_meeting(mouse_x,mouse_y,"water")){
                instance_create(mouse_x,mouse_y,obj_campfire);
                used = true;
            }break;
        case itemIndex.iraincatcher:
            if(!scr_tile_meeting(mouse_x,mouse_y,"water")){
                instance_create(mouse_x,mouse_y,obj_raincatcher);
                used = true;
            }break;
        default:
            if(item != itemIndex.inone){
                used = true;
                event_perform_object(getObject(item),ev_other,ev_user0);
            }
    }
    if(used){
        inv.items[inv.selected,1]--;
        if(getInventorySelectedNumber(inv) == 0){
            inv.items[inv.selected,0] = itemIndex.inone;
        }
        used = false;
    }
}
