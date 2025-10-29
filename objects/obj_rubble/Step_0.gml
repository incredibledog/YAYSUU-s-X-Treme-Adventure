/// @description Insert description here
// You can write your code in this editor

if hascollision
	mycollision.y = y
else
{
	mycollision.y = -2763
	if touchingplayer(x - checkoffsetx, y - checkoffsety)
	{
		if (global.firstplayertouch.char != "T" && strong) // how does this work (it doesn't)
		{
			if instance_exists(global.secondplayertouch)
			{
				if (global.secondplayertouch.char != "T" && strong)
					return; //no breaky...
				else
					destroyedbyplayer = global.secondplayertouch // i think this was an oversight??
			}
		}
		else
			destroyedbyplayer = global.firstplayertouch
		instance_destroy()
	}
}