/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && candamage
{
	if (!(!global.firstplayertouch.vulnerable && vulnerable))
		global.firstplayertouch.ouchies = true
	if (global.secondplayertouch != noone)
	{
		if (!(!global.secondplayertouch.vulnerable && vulnerable))
			global.secondplayertouch.ouchies = true
	}
}