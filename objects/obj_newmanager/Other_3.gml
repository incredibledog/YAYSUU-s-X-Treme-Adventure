/// @description Insert description here
// You can write your code in this editor
ini_open("savedata.ini")
ini_write_real("settings","fullscreen",window_get_fullscreen())
ini_close()