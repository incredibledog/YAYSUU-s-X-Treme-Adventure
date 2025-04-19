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
if global.key_start
{
	if room=room_idalogo
	{
		show_error("SEE YOU NEXT TIME ...",true)
	}
	obj_fadeblack.fading=true
	audio_stop_all()
}
