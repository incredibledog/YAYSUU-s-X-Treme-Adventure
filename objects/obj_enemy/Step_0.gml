/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	if !global.firstplayertouch.vulnerable
	{
		candamage = false
		instance_destroy()
		if (!small)
		{
			with (global.firstplayertouch)
				scr_player_trybounce(other.dashbouncy)
		}
	}
	else if (global.secondplayertouch != noone)
	{
		if !global.secondplayertouch.vulnerable
		{
			candamage = false
			instance_destroy()
			if (!small)
			{
				with (global.secondplayertouch)
					scr_player_trybounce(other.dashbouncy)
			}
		}
	}
	
	if global.firstplayertouch.vulnerable && candamage
		global.firstplayertouch.ouchies = true
	if (global.secondplayertouch != noone)
	{
		if global.secondplayertouch.vulnerable && candamage
			global.secondplayertouch.ouchies = true
	}
}