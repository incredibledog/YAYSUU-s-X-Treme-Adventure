/// @description Insert description here
// You can write your code in this editor
chos=clamp(chos,1,4)
if global.key_upp && selected=false
{
	chos--
	audio_play_sound(snd_move,1,false)
}
if global.key_downp && selected=false
{
	chos++
	audio_play_sound(snd_move,1,false)
}
if chos=1
{
	x=122
	y=118
}
if chos=2
{
	x=158
	y=182
}
if chos=3
{
	x=194
	y=246
}
if chos=4
{
	x=230
	y=310
}
if (global.key_jump || global.key_start) && selected=false
{
	if chos=1
	{
		// put code here!!!!
	}
	if chos=2
	{
		global.trial=true
		global.nextroom=room_charselect
	}
	if chos=3
	{
		global.nextroom=room_options
	}
	if chos=4
	{
		// put code here!!!!
	}
	if chos=2 || chos=3
	{
		image_alpha=1
		image_speed=1
		delay=room_speed 
		selected=true
		audio_play_sound(snd_confirm,1,false)
	}
	if chos=1 || chos=4
	{
		audio_stop_sound(snd_nicetry)
		audio_play_sound(snd_nicetry,1,false)
	}
}
if delay=0 && selected=true
{
	obj_fadeblack.fading=true
}
if delay>0
{
	delay--
}