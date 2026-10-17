if collision_rectangle(x - 3, y - 3, x + 3 + sprite_width , y + 3 + sprite_height, obj_cedric, false, true) and keyboard_check_pressed(ord("Z")) and !instance_exists(obj_textbox) and obj_cedric.face = corr_face
   {
        create_textbox(text_id)
   }
