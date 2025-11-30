/// @description Insert description here
// You can write your code in this editor
instance_activate_object(obj_extras)
ini_open("savedata.ini")
if ini_read_real("extras","extrastageunlock",false)
{
	obj_extras.extrasunlock=true
}