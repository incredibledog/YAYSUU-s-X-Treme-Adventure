/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	if (warptype == noone)
	{
		global.score+=global.scoreadd
		global.scoreadd=0
		global.checkpoint=false
		loadroom(warproom, loadtype.nextroom)
	}
	else
	{
		loadroom(warproom, warptype)
	}
	obj_player.newstate=playerstates.inactive
}