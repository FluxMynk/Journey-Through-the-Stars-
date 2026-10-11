accept_key = keyboard_check_pressed(ord("Z"))
skip_key = keyboard_check_pressed(ord("X"))

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 170;

//----------setting up the textbox----------//
if setup = false 
   {
        setup = true;
        draw_set_font(global.main_font)
        draw_set_valign(fa_top)
        draw_set_halign(fa_left)
        page_number = array_length(text)
        for (var p = 0; p < page_number; p++) 
        {
            
        //num of characters in a page of text
        text_length[p] = string_length(text[p])
        
        //set x offset
            //x offset when centered(no NPC speaking)
            text_x_offset[p] = 73;
       	
        }
    
    
   }

//--------------typing the text--------------//
if draw_chara < text_length[page]
    {
        draw_chara += text_spd
        draw_chara = clamp(draw_chara, 0, text_length[page])
    }


//--------------going through dialogue----------------//
if accept_key
    {
        //if it's done typing       
        if draw_chara == text_length[page]
            { 
                //flipping to the next page
                if page < page_number-1
                    {
                        page++; 
                        draw_chara = 0; 
                    }
                //if on the final page
                else 
                    {
                        //link text
                        if option_number > 0
                            {
                                create_textbox(option_link_id[option_pos])
                            }
                	instance_destroy();
                    }
                
            }
        
    }


if draw_chara < text_length[page] and skip_key
    { 
        draw_chara = text_length[page]
    }


//drawing the textbox
var txtb_x = textbox_x + text_x_offset[page];
var txtb_y = textbox_y;
txtb_spr_w = sprite_get_width(spr_text_box);
txtb_spr_h = sprite_get_height(spr_text_box);

draw_sprite_ext(textbox_sprite, textbox_img, txtb_x, txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 0.75)

//--------------options-----------//

if draw_chara == text_length[page] and page == page_number-1
    {
        //option selection
        option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
        option_pos = clamp(option_pos, 0, option_number-1);
        
        //draw the options
        var op_space = 15;
        var op_bord = 4;
        for (var op = 0; op < option_number; op++) 
            {
                //option box
        	    var op_w = string_width(option[op]) + op_bord*2; 
                draw_sprite_ext(textbox_sprite, textbox_img, txtb_x, txtb_y - op_space*option_number + op_space*op, op_w/txtb_spr_w, (op_space-1)/txtb_spr_h, 0, c_white,0.75)
                    
                //select options
                var c1 = c_white
                var c2 = c_white
                var c3 = c_white
                var c4 = c_white
                if option_pos == op 
                    { 
                    //select options 
                    c1 = c_yellow;
                    c2 = c_blue; 
                    c3 = c_purple; 
                    c4 = c_black;
                    }    
                //option text
                draw_text_colour(txtb_x + op_bord, txtb_y - op_space*option_number + op_space*op + 2, option[op], c1, c2, c3, c4, 1)
            }
        
        
        
    }


//draw the text
var drawtext = string_copy(text[page], 1, draw_chara)
draw_text_ext_transformed(txtb_x + border, txtb_y + border, drawtext, line_sep, line_width, 1.15, 1.15, 0)