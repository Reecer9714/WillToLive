#define drawBarInventory
///drawBarInventory(inventory, maxItems)
var inv = argument0;
var width = display_get_gui_width();
var height = display_get_gui_height();
var tileSize = global.tileSize;

var x1 = (width - argument1 * tileSize)/2;
for(i=0; i < argument1; i++){
    
    var xx = x1 + (i * tileSize + (tileSize)/2);
    var yy = height - (tileSize)/2;
    
    drawInventoryBox(inv, xx, yy);
}

#define drawCircleInventory
///drawCircleInventory(inventory, maxItems);
var inv = argument0;
var width = display_get_gui_width();
var height = display_get_gui_height();

var angleOff = 360/argument1;
var curAngle = 90;
for(i=0; i < argument1; i++){
    var xx = (width/2) + lengthdir_x(48,curAngle);
    var yy = (height/2) + lengthdir_y(48,curAngle);
    curAngle -= angleOff;
    
    drawInventoryBox(inv, xx, yy);
}

#define drawInventoryBox
///drawInventoryBox(inventory, x, y)
var inv = argument0.items;
var xx  = argument1;
var yy  = argument2;

draw_sprite(spr_invbox_32,0,xx,yy);
    
if(inv[i,0] != -1){
    draw_sprite(spr_items,inv[i,0],xx,yy);
}

if(!inv[i,1] == 0){
    draw_text(xx,yy,inv[i,1]);
}

if(selected == i){
    draw_sprite(spr_invbox_32,1,xx,yy);
}
