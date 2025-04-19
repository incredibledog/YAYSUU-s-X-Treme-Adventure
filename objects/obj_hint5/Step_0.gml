/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player)
{
	if (place_meeting(x,y,obj_player)) && hint5=false
	{
		hint5=true
		obj_hint6.hint6=false
		obj_hint4.hint4=false
		obj_hint3.hint3=false
		obj_hint2.hint2=false
		obj_hint1.hint1=false
		hint5timer=hintlength
		audio_play_sound(snd_hint,1,false)
		audio_play_sound(hintsound,1,false)
	}
}
if hint5timer>0
{
	hint5timer-=1
}
if hint5timer=0 && hint5=true
{
	hint5=false
}
if hint5=false && audio_is_playing(hintsound)
{
	audio_stop_sound(hintsound)
}
if room=room_tutorial
{
	if global.char="Y"
	{
		hint5string="Use the moves you've \nlearned to take out those \nenemies."
	}
	if global.char="T"
	{
		if !gamepad_is_connected(0)
		{
			hint5string="Press DOWN in the air \nto stomp those enemies."
		}
		if gamepad_is_connected(0)
		{
			hint5string="Press B in the air \nto stomp those enemies."
		}
	}
	hintlength=room_speed*5
}