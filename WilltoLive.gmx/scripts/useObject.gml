fishingRod();

if(use){
    var used = false;
    var item = global.inventory[obj_inventory.selected,0];
    //event_perform_object(item, ev_other, ev_user0) 
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
    }
    if(used){
        global.inventory[obj_inventory.selected,1]--;
        if global.inventory[obj_inventory.selected,1]==0{
            global.inventory[obj_inventory.selected,0]=itemIndex.inone
        }
    }
}
