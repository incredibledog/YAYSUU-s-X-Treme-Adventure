/// @description Insert description here
// You can write your code in this editor
if !started
{
	if keyboard_check_pressed(global.p1_startkey)
	{
		global.inputtype=0
		delay=60
		started=true
		audio_play_sound(snd_confirm,1,false)
		image_speed=2
	}
	if gamepad_button_check_pressed(global.p1_controlslot,gp_start)
	{
		global.inputtype=2
		delay=60
		started=true
		audio_play_sound(snd_confirm,1,false)
		image_speed=2
	}
}
else if started
{
	if delay=0
	{
		instance_destroy()
		if global.pause
		{
			instance_activate_object(obj_pause)
		}
		else {
			instance_activate_all()
			audio_resume_sound(global.currentsong)
		}
	}
	if delay>0
	{
		delay--
	}
}