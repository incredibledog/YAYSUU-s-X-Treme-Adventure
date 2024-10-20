/// @description Insert description here
// You can write your code in this editor
key_right=keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0,gp_padr)
key_left=keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0,gp_padl)
key_start=keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(0,gp_start)
chos=clamp(chos,1,2)
if chos=1
{
	x=224
}
if chos=2
{
	x=416
}
if key_right
{
	audio_play_sound(snd_move,1,false)
	chos+=1
}
if key_left
{
	audio_play_sound(snd_move,1,false)
	chos-=1
}
if key_start && chos=1
{
	global.char="Y"
	audio_play_sound(snd_confirm,1,false)
	obj_fadeblack.fading=true
}
if key_start && chos=2
{
	global.char="T"
	audio_play_sound(snd_confirm,1,false)
	obj_fadeblack.fading=true
}