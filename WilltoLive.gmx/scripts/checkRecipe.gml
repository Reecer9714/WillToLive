var recipe = argument0

var size, key, i;
var size = ds_list_size(global.recipes);
for (i = 0; i < size; i++;){
    if(arrayEqual(recipe,global.recipes[| i])){
        return global.recipesName[| i]
        break;
    }
}

return "";
