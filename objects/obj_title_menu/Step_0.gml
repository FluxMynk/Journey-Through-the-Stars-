//setting input keys to scroll options
upkey = keyboard_check_pressed(vk_up)
downkey = keyboard_check_pressed(vk_down)
accept_key = keyboard_check_pressed(ord("Z"))

// determining num of options

op_length = array_length(option[menu_level])

//selecting options
pos += downkey - upkey
if pos < 0 {pos = op_length-1}
if pos >= op_length {pos = 0}

//choosing the options
if accept_key
{    
    var sml = menu_level;
    switch (menu_level) 
    { 
        case 0: 
           switch (pos) 
           {
              	case 0:
                   room_goto_next()
                   break;
               case 1:
                   game_end()
                   break;
               case 2:
                   menu_level = 1;
                   break;
               
           }
              break;
        case 1:
                //credits
            switch (pos) 
                {
                case 0:
                    break;
                case 1:
                    break;
                case 2:
                    break;
                case 3:
                    menu_level = 0;
                    break;
                }
            break;
    }
    //correct position
    if sml != menu_level {pos = 0}
    
    //correct option length
    op_length = array_length(option[menu_level])
     
   }
