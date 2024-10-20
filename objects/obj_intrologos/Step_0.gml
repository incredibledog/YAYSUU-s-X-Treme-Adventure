/// @description Insert description here
// You can write your code in this editor
if !audio_is_playing(jingle) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_start)
{
	obj_fadeblack.fading=true
	audio_stop_all()
}