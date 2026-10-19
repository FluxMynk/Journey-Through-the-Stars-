if place_meeting(x, y, obj_cedric) and !instance_exists(obj_textbox)
    {
        create_textbox(text_id)
        instance_destroy()
    }