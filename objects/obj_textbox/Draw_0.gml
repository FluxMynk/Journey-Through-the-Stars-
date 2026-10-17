accept_key = keyboard_check_pressed(ord("Z"))
skip_key = keyboard_check_pressed(ord("X"))

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 132;

//----------setting up the textbox-----------//
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
            //portrait on screen(NPC speaking)
            //on the left
            text_x_offset[p] = 97;
            portrait_x_offset[p] = 27; 
            //on the right
            if speaker_side[p] == -1
            {
                text_x_offset[p] = 27;
                portrait_x_offset[p] = 271;
            }
            //x offset when centered(no NPC speaking)
            if  speaker_sprite[p] = noone
                { 
                text_x_offset[p] = 63 ;
                }
        //setting characters and finding line breaks   
            for (var c = 0; c < text_length[p]; c++) 
                {
                    var chara_pos = c+1;
                    
                    //store characters
                    chara[c,p] = string_char_at(text[p], chara_pos)
                    
                    //width of the line
                    var text_upto_chara = string_copy(text[p], 1, chara_pos);
                    var current_text_w = string_width(text_upto_chara) - string_width(chara[c, p]);
                    
                    //get last free space
                    if chara[c, p] == " " 
                        {
                            last_free_space = chara_pos + 1
                        }
                    //get the line breaks
                    if current_text_w - line_break_offset[p] > line_width
                        {
                            line_break_pos[line_break_num[p], p] = last_free_space;
                            line_break_num[p]++;
                            
                            var text_upto_last_space = string_copy(text[p], 1, last_free_space);
                            var last_string_free_space = string_char_at(text[p], last_free_space);
                            line_break_offset[p] = string_width(text_upto_last_space) - string_width(last_string_free_space);
                        }
                    
                }
                    
                //coordinates of each character
                for (var c = 0; c < text_length[p]; c++) 
                   {
                   	var chara_pos = c+1;
                    var txt_x = textbox_x + text_x_offset[p] + border;
                    var txt_y = textbox_y + border;
                    //width of the line
                    var text_upto_chara = string_copy(text[p], 1, chara_pos)
                    var spaces_num = chara_pos-1;
                    var current_text_w = string_width(text_upto_chara) - string_width(chara[c, p]) + (spaces_num*letter_sep);
                    var txt_line = 0;
                    
                    //comp for string breaks
                    for (var b = 0; b < line_break_num[p]; b++) 
                        {
                    	if chara_pos >= line_break_pos[b, p]
                            {
                                var str_copy = string_copy(text[p], line_break_pos[b, p], chara_pos - line_break_pos[b, p]);
                                current_text_w = string_width(str_copy);
                                txt_line = b+1;
                            }
                        }
                    
                    //add to x and y
                    chara_x[c, p] = txt_x + current_text_w;
                    chara_y[c, p] = txt_y + txt_line*line_sep;
                    
                    
                    
                    }
                    
                    
                    
                    
                    
            	
                }
        }
    
    
    


//--------------typing the text---------------//
if pause_timer <= 0
    {

    if draw_chara < text_length[page] 
        {
            draw_chara += text_spd;
            draw_chara = clamp(draw_chara, 0, text_length[page]);
            var check_character = string_char_at(text[page], draw_chara);
            if check_character == "." or check_character == "!" or check_character == "," or check_character = "?"
               {
                    pause_timer = pause_time;
               }
        }
    } 
    else  
        {
        
        pause_timer--;	
           
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
txtb_spr_w = sprite_get_width(textbox_sprite[page]);
txtb_spr_h = sprite_get_height(textbox_sprite[page]);

//draw the speaker's portrait 
if speaker_sprite[page] != noone
    {
        sprite_index = speaker_sprite[page];
        var speaker_x = textbox_x + portrait_x_offset[page];
        if speaker_side[page] == -1 
            {
                speaker_x += sprite_width*0.806
            }
        //draw the portrait
        draw_sprite_ext(textbox_sprite[page], textbox_img, textbox_x + portrait_x_offset[page], textbox_y, 6.2 , 6, 0, c_white, 0.85);
        draw_sprite_ext(sprite_index, image_index, speaker_x + 6, textbox_y - 5.12, 0.8, 0.8, 0, c_white, 1);
    }
//make the textbox animate
textbox_img += textbox_img_spd;

//textbox background
draw_sprite_ext(textbox_sprite[page], textbox_img, txtb_x, txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 0.88)

//--------------options-------------//

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
                draw_sprite_ext(textbox_sprite[page], textbox_img, txtb_x, txtb_y - op_space*option_number + op_space*op, op_w/txtb_spr_w, (op_space-1)/txtb_spr_h, 0, c_white,0.75);
                    
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
for (var c = 0; c < draw_chara; c++) 
{
    
	draw_text_transformed_colour(chara_x[c,page] +3, chara_y[c, page], chara[c, page], 1, 1, 0, color1[c, page], color2[c, page], color3[c, page], color4[c, page], 1)
    
}