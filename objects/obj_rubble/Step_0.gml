/// @description Insert description here
// You can write your code in this editor

if hascollision
	mycollision.y = y
else
{
	mycollision.y = -2763
	if touchingplayer(x - checkoffsetx, y - checkoffsety)
	{
		if (global.firstplayertouch.char != "T" && strong)
		{
			if (global.secondplayertouch != noone)
			{
				if (global.secondplayertouch.char != "T" && strong)
					return; //no breaky...
				else
					destroyedbyplayer = global.firstplayertouch
			}
		}
		else
			destroyedbyplayer = global.firstplayertouch
		instance_destroy()
	}
}