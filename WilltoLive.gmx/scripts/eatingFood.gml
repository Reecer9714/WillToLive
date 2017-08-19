//Eating Food from Inventroy
if use && hunger >= 5 &&(
    global.inventory[obj_inventory.selected,0]==itemIndex.icoconut ||
    global.inventory[obj_inventory.selected,0]==itemIndex.irawfish ||
    global.inventory[obj_inventory.selected,0]==itemIndex.icookedfish ||
    global.inventory[obj_inventory.selected,0]==itemIndex.irawcrab ||
    global.inventory[obj_inventory.selected,0]==itemIndex.icookedcrab ||
    global.inventory[obj_inventory.selected,0]==itemIndex.iberry ){
        if global.inventory[obj_inventory.selected,0]==itemIndex.icoconut || 
                global.inventory[obj_inventory.selected,0]==itemIndex.iberry{
            hunger-= 25
        }else if global.inventory[obj_inventory.selected,0]==itemIndex.irawfish ||
                global.inventory[obj_inventory.selected,0]==itemIndex.irawcrab{
            hunger-= 15
            hp -= 10
        }else if global.inventory[obj_inventory.selected,0]==itemIndex.icookedfish ||
                global.inventory[obj_inventory.selected,0]==itemIndex.icookedcrab{
            hunger-= 35
            hp += 10
            hp = clamp(hp,0,1000)
        }
        global.inventory[obj_inventory.selected,1]-- 
        if(global.inventory[obj_inventory.selected,1] == 0){
            global.inventory[obj_inventory.selected,0]=itemIndex.inone
        }
        hunger = clamp(hunger,0,200)
}

