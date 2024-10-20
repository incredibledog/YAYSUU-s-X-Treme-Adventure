/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_player)
{
	global.hubstart=false
	global.checkpoint=false
	global.score+=global.scoreadd
	global.scoreadd=0
	global.nextroom=warproom
	obj_fadeblack.fading=true
}