var item = argument0;

//loop through inventory to see if any other similar items are already in it
for(var i = 0; i< global.maxItems; i++){
    if(global.inventory[i,0] == getIndex(item)){
        global.inventory[i,1]++;
        audio_play_sound(choose(s_pop1,s_pop2,s_pop3),1,0);
        exit;
    }
}

var i = 0
var full = true
while(full){
    if global.inventory[i,0] = 0 || global.inventory[i,0] = getIndex(item) && i < maxItems{
        global.inventory[i,0] = getIndex(item);
        global.inventory[i,1]++;
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
