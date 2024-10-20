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
}
if x>=640
{
	instance_destroy() // unload it just to be safe
}