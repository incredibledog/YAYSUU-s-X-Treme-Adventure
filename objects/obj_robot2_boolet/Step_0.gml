/// @description Insert description here
// You can write your code in this editor
x+=bulletspeed*image_xscale
event_inherited()
if place_meeting(x,y,obj_collision)
	instance_destroy()
else if place_meeting(x,y,obj_rubble)
{
	var rubbe = instance_place(x,y,obj_rubble)
	if (rubbe.object_index != obj_silverblock)
		instance_destroy(rubbe)
	instance_destroy()
}