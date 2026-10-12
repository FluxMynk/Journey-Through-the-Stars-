depth = -9999

//parameters
textbox_width = 334;
textbox_height = 80;
border = 8;
line_sep = 12;
line_width = (textbox_width-border*8);

//text
page = 0;
text[0] = "";
text_length[0] = string_length(text[0])
draw_chara = 0;
chara[0,0] = "";
chara_x[0] = 0;
chara_y[0] = 0;
text_spd = 1;
page_number = 0;
textbox_sprite[0] = spr_text_box;
textbox_img = 0;
letter_sep = 0.74;
//options
option[0] = 0;
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

setup = false;

//sfx and vfx
scr_set_defaults_for_text();
last_free_space = 0;