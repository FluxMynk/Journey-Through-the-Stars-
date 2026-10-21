if instance_exists(obj_cedric)
    {
    if place_meeting(x, y, obj_cedric) and !instance_exists(obj_textbox)
       {
           
           alarm--;
           if alarm[0] = 0
               {
                   create_textbox(text_id)
                   instance_destroy()
               }    
       }
    }    