/// @description Insert description here
// You can write your code in this editor
var type = async_load[? "type"]
if type="video_start"
{
}
if type="video_end"
{
	video_close()
	loadroom(room_titlescreen, false)
	obj_fadeblack.image_alpha = 1
	audio_stop_all()
}