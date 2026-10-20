depth = -9999

//parameters
textbox_width = 234;
textbox_height = 60;
border = 8;
line_sep = 12;
line_width = (textbox_width-border*6 -4);

//text
page = 0;
text[0] = "";
text_length[0] = string_length(text[0])
draw_chara = 0;
chara[0,0] = "";
chara_x[0] = 0;
chara_y[0] = 0;
text_spd = 0.7;
page_number = 0;
textbox_sprite[0] = spr_text_box;
textbox_img = image_index;
textbox_img_spd = 0.15;
letter_sep = 0.74;
pause_timer = 0;
pause_time = 16;

//options
option[0] = 0;
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

setup = false;

//sfx and vfx
scr_set_defaults_for_text();
last_free_space = 0;
