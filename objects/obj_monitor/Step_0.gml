/// @description Insert description here
// You can write your code in this editor
movingobject_start()
movingobject_end()

if touchingplayer(x, y)
{
	if (!global.firstplayertouch.vulnerable)
	{
		whichplayerispurpeguymurderer = global.firstplayertouch
		instance_destroy()
		with (global.firstplayertouch)
			scr_player_trybounce(false)
	}
	else if (global.secondplayertouch != noone)
	{
		if (!global.secondplayertouch.vulnerable)
		{
			whichplayerispurpeguymurderer = global.secondplayertouch
			instance_destroy()
			with (global.secondplayertouch)
				scr_player_trybounce(false)
		}
	}
}