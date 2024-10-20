/// @description Insert description here
// You can write your code in this editor
nextkey=keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0,gp_face1)
if nextkey && image!=limit
{
	image+=1
}
if nextkey && image=limit
{
	obj_fadeblack.fading=true
}