//Eating Food from Inventroy
var foodIndex = global.inventory[obj_inventory.selected,0];
if use && hunger >= 5 &&(
    foodIndex==itemIndex.icoconut ||
    foodIndex==itemIndex.irawfish ||
    foodIndex==itemIndex.icookedfish ||
    foodIndex==itemIndex.irawcrab ||
    foodIndex==itemIndex.icookedcrab ||
    foodIndex==itemIndex.iberry ){
        if(foodIndex==itemIndex.icoconut){
            hunger-= 25;
            thirst-= 10;
            var stats = global.stats;
            var num = ds_map_find_value(stats,"coconut") + 1;
            ds_map_replace(stats,"coconut",num);
        }else if(foodIndex==itemIndex.iberry){
            hunger-= 5;
            thirst-= 5;
        }else if(foodIndex==itemIndex.irawfish ||
                 foodIndex==itemIndex.irawcrab){
            hunger-= 15
            hp -= 10
        }else if(foodIndex==itemIndex.icookedfish ||
                 foodIndex==itemIndex.icookedcrab){
            hunger-= 35
            hp += 10
            hp = clamp(hp,0,1000)
        }
        global.inventory[obj_inventory.selected,1]-- 
        if(global.inventory[obj_inventory.selected,1] == 0){
            global.inventory[obj_inventory.selected,0]=itemIndex.inone
        }
        hunger = clamp(hunger,0,200)
        thirst = clamp(thirst,0,200)
}

