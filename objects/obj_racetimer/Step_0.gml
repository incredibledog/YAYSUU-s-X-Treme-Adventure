/// @description Insert description here
// You can write your code in this editor
if (timing)
	timer++
var tottch = touchingplayer(x,y)
if (storedtouching != tottch)
{
	storedtouching = tottch
	if (tottch)
	{
		timing = !timing
		if (timing)
			timer = 0
	}
}