/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player)
{
	if (place_meeting(x,y,obj_player)) && hint=false && !(audio_is_playing(hintsound))
	{
		hint=true
		audio_group_stop_all(voicelines)
		audio_play_sound(snd_hint,1,false)
		audio_play_sound(hintsound,1,false)
	}
	if !(place_meeting(x,y,obj_player)) && hint=true
	{
		hint=false
	}
}