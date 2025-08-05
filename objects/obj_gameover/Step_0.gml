/// @description Insert description here
// You can write your code in this editor
image_alpha=clamp(image_alpha+0.1,0,1)
if !audio_is_playing(gameoversong) || global.key_start
{
	audio_stop_all()
	if !global.trial
	{
		if global.char="Y"
		{
			ini_write_real("fileY","lives",3)
		}
		if global.char="T"
		{
			ini_write_real("fileT","lives",3)
		}
	}
	loadroom(room_titlescreen,loadtype.menu)
}