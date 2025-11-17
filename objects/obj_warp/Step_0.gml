/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	if (warptype == noone) || (warptype == loadtype.nextroom)
	{
		global.score+=global.scoreadd
		global.scoreadd=0
		global.checkpoint=false
		global.firstroom=false
		loadroom(warproom, loadtype.nextroom)
	}
	else if warptype == loadtype.newlevel
	{
		loadnewstage(global.lives, warproom)
	}
	else
	{
		loadroom(warproom, warptype)
	}
	global.firstplayertouch.newstate=playerstates.inactive
}