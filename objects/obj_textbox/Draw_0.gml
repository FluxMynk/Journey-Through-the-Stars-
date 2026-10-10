accept_key = keyboard_check_pressed(ord("Z"))
skip_key = keyboard_check_pressed(ord("X"))

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 170;

//setting up the textbox
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

//typing the text
if draw_chara < text_length[page]
    {
        draw_chara += text_spd
        draw_chara = clamp(draw_chara, 0, text_length[page])
    }


//going through dialogue
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
                	instance_destroy();
                    }
                
            }
        
    }

if draw_chara < text_length[page] and skip_key
    { 
        draw_chara = text_length[page]
    }


//drawing the textbox
txtb_spr_w = sprite_get_width(spr_text_box);
txtb_spr_h = sprite_get_height(spr_text_box);

draw_sprite_ext(textbox_sprite, textbox_img, textbox_x + text_x_offset[page], textbox_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 0.75)

//draw the text
var drawtext = string_copy(text[page], 1, draw_chara)
draw_text_ext_transformed(textbox_x + text_x_offset[page] + border, textbox_y + border, drawtext, line_sep, line_width, 1.15, 1.15, 0)