/// @description Insert description here
// You can write your code in this editor
if noticed
{
	move_towards_point(obj_player.x, obj_player.y, 1)
	if obj_player.x<x
		image_xscale=1
	else
		image_xscale=-1
	
	if (image_alpha < 1)
		image_alpha += 0.01
	
	if distance_to_object(obj_player)>=320
		noticed=false
}
else if distance_to_object(obj_player)<=128
{
	noticed=true
	if (image_alpha > 0.5)
		image_alpha -= 0.01
}
event_inherited()