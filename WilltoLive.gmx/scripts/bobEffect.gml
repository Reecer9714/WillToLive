///bobEffect(amt *small_number)
if(!variable_instance_exists(instance_id, "bob")){
    bob = 0;
    amt = 0;
}

amt = 1 + sin(global.t) * argument0;
image_xscale = amt
image_yscale = image_xscale
