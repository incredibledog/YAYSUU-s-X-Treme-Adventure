/// @description he waddles
// You can write your code in this editor
if (place_meeting(x+robot1_hsp,y,obj_collision)) || (place_meeting(x+robot1_hsp,y,obj_turnaround))
{
	robot1_hsp= -robot1_hsp
}
x = x+robot1_hsp
image_xscale = robot1_hsp
if (instance_exists(obj_player))
{
	if ((!obj_player.vulnerable) && (place_meeting(x,y,obj_player)))
	{
		instance_destroy()
		global.scoreadd+=100
		obj_camera.vshakeoffset=30
		instance_create_depth(x,y,depth,obj_explode)
	}
}