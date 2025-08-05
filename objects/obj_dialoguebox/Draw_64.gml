/// @description Insert description here
// You can write your code in this editor
if !nobox
{
	draw_sprite(spr_dialoguebox,0,0,0)
}
draw_text_yxa(16,327,name,"white",true)
if (finished)
    draw_text_yxa(16, 363, text, color, nobox, 608);
else
    draw_text_yxa(16, 363, string_copy(text, 1, progress), color, nobox, 608);