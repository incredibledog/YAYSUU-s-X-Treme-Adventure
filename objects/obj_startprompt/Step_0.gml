/// @description Insert description here
// You can write your code in this editor
if st>0
	st--
else
	image_alpha=1

if (started)
{
	if delay>0
		delay--
	else if (!obj_fadeblack.fading)
		loadroom(room_mainmenu, loadtype.menu)
}
else if st==0
{
	if keyboard_check_pressed(global.p1_startkey) || keyboard_check_pressed(global.p1_jumpkey)
	{
		global.inputtype=0
		started = true
	}
	else if gamepad_button_check_pressed(global.p1_controlslot,gp_start) || gamepad_button_check_pressed(global.p1_controlslot,gp_face1)
	{
		global.inputtype=2
		started = true
	}
	
	if started
	{
		delay=60
		audio_stop_sound(mus_title)
		audio_play_sound(snd_confirm,1,false)
		image_speed=2
	}
}