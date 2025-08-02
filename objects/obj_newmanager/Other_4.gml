if (global.currentsong == -1)
	audio_stop_all()
else if !audio_is_playing(global.currentsong)
{
	audio_stop_all()
	audio_play_sound(global.currentsong, 1, true);
}
global.itempopupdepth = 100

if (global.levelloadtype == loadtype.newlevel || global.levelloadtype == loadtype.respawn)
{
	global.hp = 3;
	global.maxhp = 3;
	global.scoreadd = 0
	global.coins=0
	global.coingoal=100
	if global.inboss
	{
		global.bosshp = 6
		global.maxbosshp = 6
	}
}