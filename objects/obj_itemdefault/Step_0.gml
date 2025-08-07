/// @description Insert description here
// You can write your code in this editor
var previnstances=instances
instances=instance_number(obj_itemdefault)
if instances>previnstances
{
	x-=(instances-previnstances)*32
}
if (sprite_index == spr_itemlife_y || sprite_index == spr_itemlife_t)
{
	if !audio_is_playing(snd_extralife) && audio_is_paused(global.currentsong)
	{
		if !audio_is_playing(mus_invincibility)
			audio_resume_sound(global.currentsong)
		fadeouttimer = 0
	}
	else if audio_is_playing(snd_extralife)
		fadeouttimer = 99
}

if fadeouttimer>0
	fadeouttimer--
else if (image_alpha <= 0)
	instance_destroy()
else
	image_alpha-=0.05
	
if (image_xscale < 1)
{
	image_xscale+=0.1
	image_yscale+=0.1
}