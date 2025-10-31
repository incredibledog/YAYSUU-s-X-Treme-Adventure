/// @description Insert description here
// You can write your code in this editor
image_alpha=clamp(image_alpha,0,1)
color=make_color_rgb(red,green,blue)
var fadespeed = global.quickmenu ? 255 : 51;
if fading
{
	if (instaswitch)
	{
		preloadactualroom()
		room_goto(global.nextroom)
		return
	}
	if red=255
	{
		if green=255
		{
			if blue=255
			{
				if (global.levelloadtype == loadtype.jumbojosh)
				{
					room_goto(-global.nextroom)
				}
				else
				{
					preloadactualroom()
					room_goto(global.nextroom)
				}
			}
			if blue<255
				blue+=fadespeed
		}
		if green<255
			green+=fadespeed
	}
	if red<255
		red+=fadespeed
}
else
{
	if blue=0
	{
		if green=0
		{
			if red>0
				red-=fadespeed
		}
		if green>0
			green-=fadespeed
	}
	if blue>0
		blue-=fadespeed
}
//else if image_alpha > 0
//{
//	image_alpha-=0.05
//}
