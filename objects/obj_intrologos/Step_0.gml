/// @description Insert description here
// You can write your code in this editor
if loadtime=0
{
	video_resume()
}
if loadtime>0
{
	loadtime--
}
if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0,gp_start)
{
	if room=room_idalogo
	{
		show_error("SEE YOU NEXT TIME ...",true)
	}
	loadroom(room_titlescreen, false)
	audio_stop_all()
}
