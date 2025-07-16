/// @description he waddles
// You can write your code in this editor
movingobject_start()
if abs(hsp) <= movespeed
	hsp = movespeed * image_xscale

if (hsp != 0)
{
	if place_meeting(x+hsp,y,obj_collision) || place_meeting(x+hsp,y,obj_turnaround) || place_meeting(x+hsp,y,obj_othercollision)
	{
		image_xscale = -image_xscale
		if abs(hsp) <= movespeed
			hsp = movespeed * image_xscale
	}
}
movingobject_end()
event_inherited()