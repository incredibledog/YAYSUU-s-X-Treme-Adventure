/// @description Insert description here
// You can write your code in this editor
image_alpha=clamp(image_alpha,0,1)
if fadet>0
{
	fadet-=1
}
if fadet=0 && ufadet>0
{
	image_alpha+=0.05
}
else if ufadet=0
{
	image_alpha-=0.05
}
if ufadet>0
{
	ufadet-=1
}