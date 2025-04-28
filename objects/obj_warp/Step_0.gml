/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	if (warproom == room_chillfields_1)
	{
		loadroom(warproom, loadtype.newlevel)
	}
	else
	{
		global.score+=global.scoreadd
		global.scoreadd=0
		loadroom(warproom, loadtype.nextroom)
	}
}