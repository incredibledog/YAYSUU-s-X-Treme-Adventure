/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player)
{
	if (place_meeting(x,y,obj_player)) && hint1=false
	{
		hint1=true
		obj_hint6.hint6=false
		obj_hint2.hint2=false
		obj_hint3.hint3=false
		obj_hint4.hint4=false
		obj_hint5.hint5=false
		hint1timer=hintlength
		audio_play_sound(snd_hint,1,false)
	}
}
if hint1timer>0
{
	hint1timer-=1
}
if hint1timer=0 && hint1=true
{
	hint1=false
}
if hint1=false && audio_is_playing(hintsound)
{
	audio_stop_sound(hintsound)
}
if room=room_tutorial
{
	if !gamepad_is_connected(0) {
		hint1string="Press Z or SPACE to jump!"
	}
	if gamepad_is_connected(0) {
		hint1string="Press the A button to jump!"
	}
}