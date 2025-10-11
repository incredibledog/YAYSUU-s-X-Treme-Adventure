/// @description Insert description here
// You can write your code in this editor
var whichplayer = scr_closestplayer()
if noticed
{
	move_towards_point(whichplayer.x, whichplayer.y, 1)
	if whichplayer.x<x
		image_xscale=1
	else
		image_xscale=-1
	
	if (image_alpha < 1)
		image_alpha += 0.02
	
	if distance_to_object(whichplayer)>=320
		noticed=false
}
else
{
	speed = 0
	if (image_alpha > 0.5)
		image_alpha -= 0.02
	if distance_to_object(whichplayer)<=160
		noticed=true
}
event_inherited()