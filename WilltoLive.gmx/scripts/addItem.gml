///addItem(item, [inv])
var item = argument[0];
var inv;
var items, maxItems;

if(argument_count > 1){
    inv = argument[1];
}else{
    inv = obj_player.inventory;
}

items = inv.items;
maxItems = inv.maxItems;

//loop through inventory to see if any other similar items are already in it
/*for(var i = 0; i< maxItems; i++){
    if(items[i,0] == getIndex(item)){
        items[i,1]++;
        audio_play_sound(choose(s_pop1,s_pop2,s_pop3),1,0);
        exit;
    }
}*/

var i = 0
var full = true
while(full){
    if items[i,0] = 0 || items[i,0] = getIndex(item) && i < maxItems{
        items[i,0] = getIndex(item);
        items[i,1]++;
        audio_play_sound(choose(s_pop1,s_pop2,s_pop3),1,0);
        full = false;
    }else{
        //Full Inventory
        i++;
        if i > maxItems-1{ 
            instance_create(mouse_x,mouse_y, item);
            audio_play_sound(s_drop,1,0);
            full = false;
        }
    }
}

inv.items = items;
