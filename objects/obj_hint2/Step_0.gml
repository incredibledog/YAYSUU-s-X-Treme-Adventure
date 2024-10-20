/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player)
{
	if (place_meeting(x,y,obj_player)) && hint2=false
	{
		hint2=true
		obj_hint1.hint1=false
		obj_hint3.hint3=false
		obj_hint4.hint4=false
		obj_hint5.hint5=false
		obj_hint6.hint6=false
		hint2timer=hintlength
		audio_play_sound(snd_hint,1,false)
	}
}
if hint2timer>0
{
	hint2timer-=1
}
if hint2timer=0 && hint2=true
{
	hint2=false
}
if hint2=false && audio_is_playing(hintsound)
{
	audio_stop_sound(hintsound)
}
if room=room_tutorial
{
	if global.char="Y"
	{
		if !gamepad_is_connected(0)
		{
			hint2string="Press DOWN in the air \nto perform a bounce."
		}
		if gamepad_is_connected(0)
		{
			hint2string="Press B in the air \nto perform a bounce."
		}
	}
	if global.char="T"
	{
		hint2string="Press JUMP in the air \nto perform a doublejump."
	}
	hintlength=room_speed*5
}