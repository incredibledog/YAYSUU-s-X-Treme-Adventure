/// @description Insert description here
// You can write your code in this editor
image_alpha=clamp(image_alpha,0,1)
color=make_color_rgb(red,green,blue)
if fading
{
	if red=255
	{
		if green=255
		{
			if blue=255
			{
				preloadactualroom()
				room_goto(global.nextroom)
			}
			if blue<255
			{
				blue+=51
			}
		}
		if green<255
		{
			green+=51
		}
	}
	if red<255
	{
		red+=51
	}
}
else
{
	if blue=0
	{
		if green=0
		{
			if red>0
			{
				red-=51
			}
		}
		if green>0
		{
			green-=51
		}
	}
	if blue>0
	{
		blue-=51
	}
}
//else if image_alpha > 0
//{
//	image_alpha-=0.05
//}
