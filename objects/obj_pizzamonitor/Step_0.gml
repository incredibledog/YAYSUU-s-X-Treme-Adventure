/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player))
{
	if ((!obj_player.vulnerable) && (place_meeting(x,y,obj_player)))
	{
		instance_destroy()
		global.hp=global.maxhp
		audio_play_sound(snd_heal,1,false)
		obj_camera.vshakeoffset=30
		instance_create_depth(x,y,depth,obj_explode)
	}
}