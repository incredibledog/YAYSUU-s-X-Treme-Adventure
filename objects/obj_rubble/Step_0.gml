/// @description Insert description here
// You can write your code in this editor

if !hascollision
{
	if touchingplayer(x - checkoffsetx, y - checkoffsety)
	{
		destroyedbyplayer = true
		instance_destroy()
	}
}