if place_meeting(x, y, obj_flux) and  !instance_exists(obj_warp)
    {
    var inst = instance_create_depth(0, 0, -9999, obj_warp) 
    inst.targetx = targetx  
    inst.targety = targety 
    inst.targetroom = targetroom
    inst.face = face    
    }