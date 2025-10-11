/// @description Insert description here
// You can write your code in this editor
if (touchingplayer(x,y, false))
{
	global.firstplayertouch.inbackground = true
	if (global.secondplayertouch != noone)
		global.secondplayertouch.inbackground = true
}