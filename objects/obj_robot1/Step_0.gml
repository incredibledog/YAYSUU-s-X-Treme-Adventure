/// @description he waddles
// You can write your code in this editor
if (place_meeting(x+robot1_hsp,y,obj_collision)) || (place_meeting(x+robot1_hsp,y,obj_turnaround))
	robot1_hsp = -robot1_hsp
	
x += robot1_hsp
image_xscale = sign(robot1_hsp)
event_inherited()