function scr_set_defaults_for_text()
{
    line_break_pos[0,page_number] = 999;
    line_break_offset[page_number] = 0;
    line_break_num[page_number] = 0;
    
    textbox_sprite[page_number] = spr_text_box;
    speaker_sprite[page_number] = noone;
    speaker_side[page_number] = 1;
    
    
    //colored text variables
    for (var c = 0; c < 600; c++) 
        {
    	    color1[c, page_number] = c_white;
            color2[c, page_number] = c_white;
            color3[c, page_number] = c_white;
            color4[c, page_number] = c_white;
        }
       
}


//colored text
///@param first_letter
///@param last_letter
///@param color1 
///@param color2
///@param color3 
///@param color4
function scr_colored_text(_start, _end, col1, col2, col3, col4)
    {
        for (var c = _start; c <= _end ; c++) 
           {
        	    color1[c, page_number-1] = col1
                color2[c, page_number-1] = col2
                color3[c, page_number-1] = col3
                color4[c, page_number-1] = col4
           }
    } 



/// @param text
/// @param portrait
/// @param side
function scr_text(_text)
    {
    scr_set_defaults_for_text();
            
    text[page_number] = _text;
        
    //character information  
        speaker_side[page_number] = 1
        speaker_sprite[page_number] = noone;  
    if argument_count > 1 
        {
        switch (argument[1]) 
            {
                case "cedric":
                    speaker_sprite[page_number] = spr_cedric_neutral;
                    break;
                case "cedric-happy":
                    speaker_sprite[page_number] = spr_cedric_happy;
                    break;
                case "cedric-dissapointed":
                    speaker_sprite[page_number] = spr_cedric_dissapointed;
                    break;
                case "cedric-meme":
                    speaker_sprite[page_number] = spr_cedric_meme;
                    
                    break;
                case "cedric-shocked":
                    speaker_sprite[page_number] = spr_cedric_shocked;
                    break;
            }
                
        	
            
        }    
    if argument_count > 2
        {
            speaker_side[page_number] = argument[2];
        }    
    page_number++;    
        
    }

//@param text_id
function create_textbox(text_id) 
    {
        with (instance_create_depth(0, 0, -9999, obj_textbox)) 
            { 
                scr_text_id(text_id)
            } 
    }    












///@param option
///@param link_id
function scr_option(option_, link_id_)
   {
        option[option_number] = option_;
        option_link_id[option_number] = link_id_;
    
    option_number++;   
   }