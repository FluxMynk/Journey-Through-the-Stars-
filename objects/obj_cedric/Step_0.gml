//Basic Movement

x += (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * movespd
y += (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * movespd