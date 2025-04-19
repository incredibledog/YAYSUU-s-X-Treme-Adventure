/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player)
{
	if (place_meeting(x,y,obj_player)) && sprite_index=spr_goalflag_a
	{
		sprite_index=spr_goalflag_transition_c
		audio_play_sound(snd_flagspin,1,false)
	}
}