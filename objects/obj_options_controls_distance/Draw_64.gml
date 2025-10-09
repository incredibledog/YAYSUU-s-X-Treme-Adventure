/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.smalloptfont)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(32,32,"TAP LEFT BORDER TO INCREASE \nTAP RIGHT BORDER TO DECREASE \nTAP SCREEN WHEN DONE")
draw_sprite(spr_up,1,96-global.controldistance,256)
draw_sprite(spr_left,1,32-global.controldistance,320)
draw_sprite(spr_right,1,160-global.controldistance,320)
draw_sprite(spr_down,1,96-global.controldistance,384)
draw_sprite(spr_jump,1,416+global.controldistance,384)
draw_sprite(spr_dash,1,480+global.controldistance,384)