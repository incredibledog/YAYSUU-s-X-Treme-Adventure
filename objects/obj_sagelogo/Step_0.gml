 /// @description Insert description here
// You can write your code in this editor
image_xscale=clamp(image_xscale,1,2)
image_yscale=clamp(image_yscale,1,2)
image_alpha=clamp(image_alpha,0,1)
if image_xscale>1
{
	image_xscale-=0.01
}
if image_yscale>1
{
	image_yscale-=0.01
}
if image_alpha<1
{
	image_alpha+=0.05
}