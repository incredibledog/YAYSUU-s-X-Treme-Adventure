/// @description Insert description here
// You can write your code in this editor
if loadtime=0
	video_resume()
else
	loadtime--
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_start)) && !keyboard_check(vk_alt)
{
	if room=room_idalogo
		show_error("SEE YOU NEXT TIME ...",true)
	loadroom(room_titlescreen, loadtype.menu)
	audio_stop_all()
}