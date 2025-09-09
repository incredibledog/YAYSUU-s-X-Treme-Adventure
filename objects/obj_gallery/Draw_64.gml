/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(0.5)
draw_set_colour(c_black)
draw_rectangle(0,0,640,480,false)
draw_set_alpha(1)
draw_set_colour(c_white)
draw_self()
draw_sprite(spr_savebar,0,0,0)
draw_set_valign(fa_top)
draw_text_yxa(16,16,(string(image_index+1))+"/"+(string(image_number))+"\n"+description+"\nSTART to exit","white",false,624)