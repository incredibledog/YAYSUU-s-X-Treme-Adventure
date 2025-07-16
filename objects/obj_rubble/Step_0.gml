/// @description Insert description here
// You can write your code in this editor


if hascollision
	mycollision.y = y
else
{
	mycollision.y = -2763
	if touchingplayer(x - checkoffsetx, y - checkoffsety)
	{
		destroyedbyplayer = true
		instance_destroy()
	}
}