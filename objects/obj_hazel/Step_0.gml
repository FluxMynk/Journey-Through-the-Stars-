if keyboard_check_pressed(ord("Z")) and distance_to_object(obj_cedric) < 4 and !instance_exists(obj_textbox)
    {
        if global.hazel == 0
            {
                create_textbox("hazel");
                global.hazel = 1;
            }
        else 
            {
                create_textbox("hazel-leave")
            }
    }