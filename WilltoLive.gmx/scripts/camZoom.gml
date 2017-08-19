var amount = argument0

var offX = (view_wview[0]*amount - view_wview[0]);
var offY = (view_hview[0]*amount - view_hview[0]);

view_wview[0] *= amount;
view_hview[0] *= amount;

view_xview[0] += offX/2
view_yview[0] += offY/2
