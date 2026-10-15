if place_meeting(x, y, obj_flux) and keyboard_check_pressed(ord("Z")) and !instance_exists(obj_textbox) and obj_flux.face = corr_face
   {
        create_textbox(text_id)      
   }
