if keyboard_check_pressed(ord("Z")) and distance_to_object(obj_cedric) < 4 and !instance_exists(obj_textbox)
    {
        create_textbox("bench")
    }