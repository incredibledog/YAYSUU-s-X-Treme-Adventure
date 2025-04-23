/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	global.hubstart=false
	global.score+=global.scoreadd
	global.scoreadd=0
	loadroom(warproom, false)
}