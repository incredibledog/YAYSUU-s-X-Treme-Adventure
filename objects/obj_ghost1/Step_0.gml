/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player))
{
	if distance_to_object(obj_player)<=100
	{
		noticed=true
	}
	if noticed=true
	{
		move_towards_point(obj_player.x,obj_player.y,1)
		if obj_player.x<x
		{
			image_xscale=1
		}
		else
		{
			image_xscale=-1
		}
	}
}
if (instance_exists(obj_player))
{
	if ((!obj_player.vulnerable) && (place_meeting(x,y,obj_player)))
	{
		instance_destroy()
		global.scoreadd+=100
		audio_play_sound(snd_ghostdie,1,false)
		instance_create_depth(x,y,depth,obj_ghost1_dieded)
	}
}