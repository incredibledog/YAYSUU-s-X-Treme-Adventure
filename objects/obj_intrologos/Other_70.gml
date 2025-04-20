/// @description Insert description here
// You can write your code in this editor
var type = async_load[? "type"]
if type="video_start"
{
}
if type="video_end"
{
	video_close()
	room_goto(global.nextroom)
	audio_stop_all()
}