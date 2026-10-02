
// keypresses as variables to save time while coding

rightkey = keyboard_check(vk_right);
leftkey = keyboard_check(vk_left);
upkey = keyboard_check(vk_up);
downkey = keyboard_check(vk_down);

// xspd and yspd

xspd = (rightkey - leftkey) * movespd
yspd = (downkey - upkey) * movespd

// sprite animation

mask_index = sprite[DOWN] 

if yspd == 0
{    
if xspd > 0 {face = RIGHT}
if xspd < 0 {face = LEFT}
}
if xspd > 0 and face == LEFT {face = RIGHT}
if xspd < 0 and face == RIGHT {face = LEFT }

if xspd == 0 
{
if yspd > 0 {face = DOWN}
if yspd < 0 {face = UP}
}
if yspd > 0 and face == UP {face = DOWN}
if yspd < 0 and face == DOWN {face = UP}

if yspd == 0 and xspd == 0 {image_index = 0};

sprite_index = sprite[face];

// collisions

if place_meeting(x + xspd, y, obj_wall)
    { 
    xspd = 0
    }
if place_meeting(x, y + yspd, obj_wall)
    {
    yspd = 0
    }


// basic movement

x += xspd
y += yspd

