if collision_circle(x, y, radius ,obj_cedric, false, true) and keyboard_check_pressed(ord("Z")) and !instance_exists(obj_textbox) and obj_cedric.face != corr_face
   {
        create_textbox(text_id)
   }
