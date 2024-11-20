/// @description Insert description here
// You can write your code in this editor
key_start=(keyboard_check_pressed(vk_enter)) || (keyboard_check_pressed(ord("Z"))) || gamepad_button_check_pressed(0,gp_start)
if st>0
{
	st-=1
}
if st=0
{
	image_alpha=1
}
if key_start && st=0 || ev_gesture_tap && st=0
{
	obj_fadeblack.fading=true
	audio_play_sound(snd_confirm,1,false)
}