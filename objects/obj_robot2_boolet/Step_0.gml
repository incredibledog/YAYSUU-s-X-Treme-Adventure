/// @description Insert description here
// You can write your code in this editor
x+=bulletspeed*image_xscale
if (place_meeting(x,y,obj_collision)) || (place_meeting(x,y,obj_turnaround))
	instance_destroy()