/// @description Insert description here
// You can write your code in this editor
x+=10*dir
if (place_meeting(x,y,obj_collision)) || (place_meeting(x,y,obj_turnaround))
{
	instance_destroy()
}