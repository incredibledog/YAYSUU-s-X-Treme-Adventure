/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player)
{
	if (place_meeting(x,y,obj_player)) && hint4=false
	{
		hint4=true
		obj_hint6.hint6=false
		obj_hint5.hint5=false
		obj_hint3.hint3=false
		obj_hint2.hint2=false
		obj_hint1.hint1=false
		hint4timer=hintlength
		audio_play_sound(snd_hint,1,false)
		audio_play_sound(hintsound,1,false)
	}
}
if hint4timer>0
{
	hint4timer-=1
}
if hint4timer=0 && hint4=true
{
	hint4=false
}
if hint4=false && audio_is_playing(hintsound)
{
	audio_stop_sound(hintsound)
}
if room=room_tutorial
{
	if global.char="Y"
	{
		if !gamepad_is_connected(0)
		{
			hint4string="Hold DOWN, then press X or E\nto perform a slide."
		}
		if gamepad_is_connected(0)
		{
			hint4string="Hold DOWN, then press B\nto perform a slide."
		}
	}
	if global.char="T"
	{
		if !gamepad_is_connected(0)
		{
			hint4string="Press X or E \nto perform a dash attack."
		}
		if gamepad_is_connected(0)
		{
			hint4string="Press B to \nperform a dash attack."
		}
	}
	hintlength=room_speed*5
}