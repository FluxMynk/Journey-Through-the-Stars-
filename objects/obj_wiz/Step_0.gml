if keyboard_check_pressed(ord("Z")) and distance_to_object(obj_cedric) < 4 and !instance_exists(obj_textbox)
    {
        if wizcounter = 0
            {
                create_textbox("wiz");
                wizcounter++;
            }
        
        
        
        if wizcounter = 2
            { 
                create_textbox("wiz-4")
            }
        
        
        
        if global.hazel = 1 and wizcounter = 1 
            { 
                create_textbox("wiz-3") 
                wizcounter++;
            }  
        
        
        
        if wizcounter = 1 and !instance_exists(obj_textbox) and counter == 0
            {
                create_textbox("wiz-2")
                
            }
        
    }