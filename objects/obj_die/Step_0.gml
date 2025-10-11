if touchingplayer(x, y)
{
	global.firstplayertouch.ouchies = true
	global.firstplayertouch.deathies = true
	if (global.secondplayertouch != noone)
	{
		global.secondplayertouch.ouchies = true
		global.secondplayertouch.deathies = true
	}
}