/// @description Insert description here
// You can write your code in this editor
if image_xscale>1
{
	image_xscale-=0.005
	image_yscale-=0.005
	image_xscale=clamp(image_xscale,1,2)
	image_yscale=clamp(image_yscale,1,2)
}
if uwt>0
	uwt--
else {
	sprite_index=spr_logo
	scr_windowtitle("YAYSUU's X-Treme Adventure!")
}