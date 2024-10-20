/// @description Insert description here
// You can write your code in this editor
image_xscale=clamp(image_xscale,1,2)
image_yscale=clamp(image_yscale,1,2)
if image_xscale>1
{
	image_xscale-=0.005
}
if image_yscale>1
{
	image_yscale-=0.005
}
if uwt>0
{
	uwt-=1
}
if uwt=0
{
	sprite_index=spr_logo
}