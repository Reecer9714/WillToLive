///createRecipe([recipes],"name")
var recipe = argument0;
var name = argument1;

ds_list_add(global.recipes, recipe);
ds_list_add(global.recipesName, name);
