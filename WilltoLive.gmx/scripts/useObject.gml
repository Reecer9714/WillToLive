var inv = obj_player.inventory;
if(use){
    var item = getInventorySelected(inv);
    used = false;
    switch(item){
        case itemIndex.ibed:
        case itemIndex.icampfire:
        case itemIndex.iraincatcher:
            if(!obj_player.placing && !scr_tile_meeting(mouse_x,mouse_y,"water")){
                var blueprint = instance_create(mouse_x,mouse_y,obj_blueprint);
                blueprint.sprite_index = object_get_sprite(getObject(item));
                blueprint.real_object = getObject(item);
                obj_player.placing = true;
            }break;
        case itemIndex.inet:
            if(!obj_player.placing && scr_tile_meeting(mouse_x,mouse_y,"water")){
                var blueprint = instance_create(mouse_x,mouse_y,obj_blueprint);
                blueprint.sprite_index = object_get_sprite(getObject(item));
                blueprint.real_object = getObject(item);
                obj_player.placing = true;
            }break;
        default:
            if(item != itemIndex.inone){
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
