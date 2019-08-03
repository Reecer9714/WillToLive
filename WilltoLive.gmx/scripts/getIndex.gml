var item = argument0;
var index;
switch(item){
    case obj_torch: index = itemIndex.itorch; break;
    case obj_campfire: index = itemIndex.icampfire_drag; break;
    case obj_wood: index = itemIndex.iwood; break;
    case obj_leaves: index = itemIndex.ileaves; break;
    case obj_rock: index = itemIndex.irock; break;
    case obj_coal: index = itemIndex.icoal; break;
    case obj_bed: index = itemIndex.ibed_drag; break;
    case obj_coconut: index = itemIndex.icoconut; break;
    case obj_rope: index = itemIndex.irope; break;
    case obj_fishingrod: index = itemIndex.ifishingrod; break;
    case obj_raw_fish: index = itemIndex.irawfish; break;
    case obj_cooked_fish: index = itemIndex.icookedfish; break;
    case obj_net: index = itemIndex.inet_drag; break;
    case obj_berry: index = itemIndex.iberry; break;
    case obj_cup: index = itemIndex.icup; break;
    case obj_cup_filled: index = itemIndex.icupfilled; break;
    case obj_cup_boiled: index = itemIndex.icupboiled; break;
    case obj_raw_crab: index = itemIndex.irawcrab; break;
    case obj_cooked_crab: index = itemIndex.icookedcrab; break;
    case obj_raincatcher: index = itemIndex.iraincatcher_drag; break;
    case obj_book: index = itemIndex.isurvivalbook; break;
    case obj_net_drag: index = itemIndex.inet; break;
    case obj_campfire_drag: index = itemIndex.icampfire; break;
    case obj_bed_drag: index = itemIndex.ibed; break;
    case obj_raincatcher_drag: index = itemIndex.iraincatcher; break;
    case obj_survivalguide: index = itemIndex.isurvivalbook; break;
    default:
        show_debug_message("No index for item " + string(item));
}

return index;
