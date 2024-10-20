/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_player) && obj_player.key_up
{
	global.hubstart=false
	global.nextroom=warproom
	obj_fadeblack.fading=true
}