/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player)) && !goaway
{
	goaway=true
	audio_play_sound(snd_stopngo,1,false)
}
if goaway=true
{
	image_alpha-=0.5
}
if image_alpha=0
{
	instance_destroy()
}