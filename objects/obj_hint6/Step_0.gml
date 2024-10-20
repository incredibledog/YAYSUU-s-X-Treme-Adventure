/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player)
{
	if (place_meeting(x,y,obj_player)) && hint6=false
	{
		hint6=true
		obj_hint5.hint5=false
		obj_hint4.hint4=false
		obj_hint3.hint3=false
		obj_hint2.hint2=false
		obj_hint1.hint1=false
		hint6timer=hintlength
		audio_play_sound(snd_hint,1,false)
		audio_play_sound(hintsound,1,false)
	}
}
if hint6timer>0
{
	hint6timer-=1
}
if hint6timer=0 && hint6=true
{
	hint6=false
}
if hint6=false && audio_is_playing(hintsound)
{
	audio_stop_sound(hintsound)
}
if room=room_tutorial
{
	if !gamepad_is_connected(0)
	{
		hint6string="Hold down C or SHIFT \nand run to the goal flag!"
	}
	if gamepad_is_connected(0)
	{
		hint6string="Hold down the X button \nand run to the goal flag!"
	}
	hintlength=room_speed*5
}