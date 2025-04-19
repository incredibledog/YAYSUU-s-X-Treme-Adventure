/// @description Insert description here
// You can write your code in this editor
if window_get_fullscreen()
{
	window_set_fullscreen(false)
	ini_open("savedata.ini")
	ini_write_real("settings","fullscreen",window_get_fullscreen())
	ini_close()
}
else {
	window_set_fullscreen(true)
	ini_open("savedata.ini")
	ini_write_real("settings","fullscreen",window_get_fullscreen())
	ini_close()
}