///tileRotation(object)
var object = argument0
var index = 0
debug = 15

left = place_meeting(x-global.tileSize,y,object);
right = place_meeting(x+global.tileSize,y,object);
up = place_meeting(x,y-global.tileSize,object);
down = place_meeting(x,y+global.tileSize,object);
left_up = place_meeting(x-global.tileSize,y-global.tileSize,object);
left_down = place_meeting(x-global.tileSize,y+global.tileSize,object);
right_up = place_meeting(x+global.tileSize,y-global.tileSize,object);
right_down = place_meeting(x+global.tileSize,y+global.tileSize,object);

//Center
if left{
    if right{
        if up{
            if down{
                if left_up{
                    if left_down{
                        if right_up{
                            if right_down{
                                ////////////////////////////Going to Add//////
                                index = debug
                            }else{//!right_down
                                index = 3
                            }
                        }else{//!right_up
                            if right_down{
                                index = 12
                            }else{//Debug
                                index = debug
                            }
                        }
                    }else{//!left_down
                        if right_up && right_down{
                            index = 5 
                        }else{//Debug
                            index = debug
                        }
                    }
                }else{//!left_up
                    if left_down && right_up && right_down{
                        index = 14
                    }else{//Debug
                        index = debug
                    }
                }
            }else{//!down
                if !left_down && !right_down{
                   index = 10 
                }else{//Debug
                    index = debug
                }  
            }
        }else{//!up
            if down{
                if left_up && right_up{
                    index = 1
                }else{//Debug
                    index = debug
                }
            }else{//Debug
                index = debug
            }
        }
    }else{//!right
        if !up && !down{
            index = 6
        }else{//Debug
            index = debug
        }
    }
}else{//!left
    if right{
        if up{
            if down{
            
            }else{//!down
            
            }
        }else{//!up
            if down{
            
            }else{//!down
            
            }
        }
    }else{//!right
        if up{
            if down{
            
            }else{//!down
            
            }
        }else{//!up
            if down{
            
            }else{//!down
                
            }
        }
    }
}

return index;
