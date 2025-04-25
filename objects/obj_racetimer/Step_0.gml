/// @description Insert description here
// You can write your code in this editor
if (timing)
	timer++
if (touchingplayer(x,y))
{
	timing = !timing
	if (timing)
		timer = 0
}