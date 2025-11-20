/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_sprite_ext(spr_notification,image_index,320,240,image_xscale,image_yscale,0,c_white,1)
if image_yscale=1
{
	draw_text_yxa(82,82,text,color,false,476,sprite,subimg)
}
if image_yscale=1 && choicer=true
{
	if global.inputtype=3
	{
		draw_sprite(spr_yes,0,224,320)
		draw_sprite(spr_quit,0,352,320)
	}
	else {
		draw_text_yxa(82,332,"  Yes\n  No","white",false)
		switch choice
		{
			case 0:
			draw_sprite(spr_menucursor_small,0,82,348)
			break;
			case 1:
			draw_sprite(spr_menucursor_small,0,82,332)
			break;
		}
	}
}
else if image_yscale=1 {
	if global.inputtype=3
	{
		draw_sprite(spr_yes,0,288,320)
	}
	else {
		draw_text_yxa(82,332,"  OK","white",false)
		draw_sprite(spr_menucursor_small,0,82,332)
	}
}