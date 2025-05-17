/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.subtitlefont)
draw_text_yxa(0, 0, "f1 delete\nf2 load", "white", false)

if (sprite_exists(thesprite))
	draw_sprite(thesprite, image_index, 256, 128)
else
	draw_text_yxa(256, 128, "):", "red", false)