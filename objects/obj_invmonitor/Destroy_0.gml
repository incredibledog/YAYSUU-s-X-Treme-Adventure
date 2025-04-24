/// @description Insert description here
// You can write your code in this editor
event_inherited();
if !instance_exists(obj_invincibility)
	instance_create_depth(obj_player.x,obj_player.y,obj_player.depth-1,obj_invincibility)
else
{
	audio_stop_sound(mus_invincibility)
	audio_play_sound(mus_invincibility,1,false)
}