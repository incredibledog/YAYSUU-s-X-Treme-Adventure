/// @description Insert description here
// You can write your code in this editor
event_inherited()
spotted=false
shoottimer=80
insecret = place_meeting(x, y, obj_seecret)
if (insecret)
{
	secretsection = instance_place(x, y, obj_seecret)
}
candamage = false