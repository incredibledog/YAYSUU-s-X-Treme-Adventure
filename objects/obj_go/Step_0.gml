/// @description Insert description here
// You can write your code in this editor
	if (place_meeting(x,y,obj_player))
	{
		obj_player.hsp = 20 * self.image_xscale
		audio_play_sound(snd_stopngo,1,false)
		instance_destroy()
	}