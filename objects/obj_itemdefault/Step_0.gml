/// @description Insert description here
// You can write your code in this editor
image_xscale=clamp(image_xscale,0.1,1)
image_yscale=clamp(image_yscale,0.1,1)
if fadeouttimer>0
{
	fadeouttimer--
}
if fadeouttimer=0
{
	image_alpha-=0.1
}
image_xscale+=0.1
image_yscale+=0.1