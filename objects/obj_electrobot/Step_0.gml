/// @description Insert description here
// You can write your code in this editor
if state=0
{
	gravityapplies=false
	sprite_index=spr_electrobot_idle
	delay=2*room_speed
}
if delay>0
{
	delay-=1
}
if delay=0 && state=0
{
	state=1
}
if state=1 && jumpd=true && place_meeting(x,y+vsp,obj_collision)
{
	image_xscale=image_xscale*-1
	jumpd=false
	state=0
}
if state=1 && jumpd=false
{
	gravityapplies=true
	jumpd=true
	hsp=4*-image_xscale
	vsp=-10
}
if gravityapplies
{
	if !place_meeting(x,y+vsp,obj_collision)
	{
		vsp+=grv
	}
	if place_meeting(x,y+vsp,obj_collision)
	{
		vsp=0
	}
}
x+=hsp
y+=vsp