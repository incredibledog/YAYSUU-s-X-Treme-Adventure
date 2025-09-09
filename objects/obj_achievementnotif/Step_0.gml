/// @description Insert description here
// You can write your code in this editor
voffset=clamp(voffset,0,64)
alpha=clamp(alpha,0,1)
if !goaway
{
	voffset-=2
	alpha+=0.05
}
else if goaway
{
	voffset+=2
	alpha-=0.05
}
if goaway && voffset=64
{
	instance_destroy()
}
if delay=0
{
	goaway=true
}
if delay>0
{
	delay--
}