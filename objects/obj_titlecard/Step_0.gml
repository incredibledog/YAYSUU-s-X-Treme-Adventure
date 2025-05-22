/// @description thing that makes the titlecard go byebye
// You can write your code in this editor
if goawaytime>0
{
	goawaytime-=1
}
else if goawaytime=0
{
	goawayspeed+=1
	x+=goawayspeed
	image_alpha-=1/60
}
if x>=640
{
	image_alpha=0
}