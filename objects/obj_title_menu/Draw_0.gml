draw_set_font(global.main_font);


//automatically set width and height
var n_width = 0;

for (var i = 0; i < op_length; i++) 
    {
	    var op_w = string_width(option[menu_level, i]) 
        n_width = max(n_width, op_w)
    }

width = n_width + op_border*2;
height = op_border*2 + string_height(option[0, 0]) + (op_length-1)*op_space;


//automatically set x and y to center

x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 + 16;

//drawing the menu box
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 0.75);

draw_set_valign(fa_top);
draw_set_halign(fa_left);

//coloring the selected option
for (var i = 0; i < op_length; i++) 
{
    var c1 = c_white
    var c2 = c_white
    var c3 = c_white
    var c4 = c_white
    if pos == i 
        { 
            c1 = c_yellow;
            c2 = c_blue; 
            c3 = c_purple; 
            c4 = c_black;
        }
	draw_text_color(x + op_border, y + op_border + op_space*i, option[menu_level, i], c1, c2, c3, c4, 1)
}
