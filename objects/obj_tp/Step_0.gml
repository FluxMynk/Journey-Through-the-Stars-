if place_meeting(x, y, obj_cedric) and !instance_exists(obj_textbox)
    {
        obj_cedric.movespd = 0
        alarm[0]--;
        if not instance_exists(obj_textbox) and alarm[0] = 0
                        { 
                            room_goto_next()
                            instance_destroy(obj_cedric)
                        }  
    }