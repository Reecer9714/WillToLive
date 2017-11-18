//Needs to be reworked
if use && global.inventory[obj_inventory.selected,0]==itemIndex.icup && scr_tile_meeting(x,y,"water"){
    global.inventory[obj_inventory.selected,0]=itemIndex.icupfilled
}else
if use && thirst > 10 &&(
    global.inventory[obj_inventory.selected,0]==itemIndex.icupfilled ||
    global.inventory[obj_inventory.selected,0]==itemIndex.icupboiled ){
        if global.inventory[obj_inventory.selected,0]==itemIndex.icupfilled{
            thirst-= 20
            hp-=20
            if irandom(20)==0{
                sick = true
                alarm[1] = global.dayTime * 3+irandom(3)
            }
        }else 
        if global.inventory[obj_inventory.selected,0]==itemIndex.icupboiled{
            thirst-= 40
        }
        //What if there is multiple stacked cups?
        if(global.inventory[obj_inventory.selected,1] > 1){
            global.inventory[obj_inventory.selected,1]--;
            addItem(obj_cup);
        }else{
            global.inventory[obj_inventory.selected,0]=itemIndex.icup;
        }
        thirst = clamp(thirst,0,200)
}
    
