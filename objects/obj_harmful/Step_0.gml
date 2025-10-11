/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	global.firstplayertouch.ouchies = true
	if (global.secondplayertouch != noone)
		global.secondplayertouch.ouchies = true
}