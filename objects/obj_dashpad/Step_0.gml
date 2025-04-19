/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player)
{
	if (place_meeting(x,y,obj_player))
	{
		obj_player.hpush=20*self.image_xscale
		audio_play_sound(snd_dashpad,1,false)
	}
}