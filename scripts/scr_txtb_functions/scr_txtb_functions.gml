function scr_set_defaults_for_text()
{
    line_break_pos[0,page_number] = 999;
    line_break_offset[page_number] = 0;
    line_break_num[page_number] = 0;
    
    textbox_sprite[page_number] = spr_text_box;
    speaker_sprite[page_number] = noone;
    speaker_side[page_number] = 1;
}





/// @param text
/// @param [portrait] 
function scr_text(_text)
    {
    scr_set_defaults_for_text();
            
    text[page_number] = _text;
        
    //character information    
    if argument_count > 1 
        {
        switch (argument[1]) 
            {
                case "cedric":
                speaker_sprite[page] = spr_cedric_neutral;
                break;
            }
                
        	
            
        }    
        
        
        
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