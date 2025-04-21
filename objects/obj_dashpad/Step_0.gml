/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player))
{
	obj_player.hsp = 25 * self.image_xscale
	if (obj_player.hsp <= 20)
		audio_play_sound(snd_dashpad,1,false)
}