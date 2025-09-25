/// @description Insert description here
// You can write your code in this editor
image_alpha=clamp(image_alpha+0.1,0,1)
if !audio_is_playing(gameoversong) || global.p1_key_start
{
	audio_stop_all()
	if !global.trial
	{
		ini_open("savedata.ini")
		ini_write_real("file" + global.char,"lives",3)
		ini_close()
	}
	loadroom(room_titlescreen,loadtype.menu)
}