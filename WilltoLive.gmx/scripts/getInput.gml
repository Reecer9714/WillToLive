//Keyboard
forward = keyboard_check(ord('W'))
back = keyboard_check(ord('S'))
dive = keyboard_check(vk_lshift)
useDown = keyboard_check_pressed(ord('E'))
useUp = keyboard_check_released(ord('E'))
craft = keyboard_check_pressed(ord('C'))
drop = keyboard_check_pressed(ord('Q'))
use = keyboard_check_pressed(ord('E'))
interact = keyboard_check_pressed(ord('F'))
left = mouse_check_button_pressed(mb_left)
right = mouse_check_button_pressed(mb_right)
pointDir = point_direction(x,y,mouse_x,mouse_y)

//Controller
