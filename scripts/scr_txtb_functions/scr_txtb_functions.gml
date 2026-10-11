/// @param text
function scr_text(_text)
    {
    text[page_number] = _text;
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