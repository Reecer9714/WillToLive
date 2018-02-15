///bobEffect(amt *small_number,speed)
if(!variable_instance_exists(instance_id, "bob")){
    bob = 0;
    amt = 0;
}

image_xscale += -amt
image_yscale = image_xscale

amt = sin(global.t) * argument0;
image_xscale += amt
image_yscale = image_xscale
