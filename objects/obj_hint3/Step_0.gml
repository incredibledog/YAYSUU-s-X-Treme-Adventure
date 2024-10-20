/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player)
{
	if (place_meeting(x,y,obj_player)) && hint3=false
	{
		hint3=true
		obj_hint6.hint6=false
		obj_hint5.hint5=false
		obj_hint4.hint4=false
		obj_hint2.hint2=false
		obj_hint1.hint1=false
		hint3timer=hintlength
		audio_play_sound(snd_hint,1,false)
	}
}
if hint3timer>0
{
	hint3timer-=1
}
if hint3timer=0 && hint3=true
{
	hint3=false
}
if hint3=false && audio_is_playing(hintsound)
{
	audio_stop_sound(hintsound)
}
if room=room_tutorial
{
	if global.char="Y"
	{
		if !gamepad_is_connected(0)
		{
			hint3string="Press X or SHIFT in the air \nto perform an airdash."
		}
		if gamepad_is_connected(0)
		{
			hint3string="Press the Y button in the air \nto perform an airdash."
		}
	}
	if global.char="T"
	{
		hint3string="Use your Doublejump to \nget across that gap."
	}
	hintlength=room_speed*5
}