if global.char="Y"
{
	subtitle = "Use all the moves you have learned to take out the enemies!"
}
if global.char="T"
{
	if global.inputtype=2
	{
		subtitle = "Press `d   mid-air to stomp the enemies!"
		button = spr_xboxbuttons
		subimg = 2
	}
	if global.inputtype=0
	{
		subtitle = "Press "+keytostring(global.p1_downkey)+" mid-air to stomp the enemies!"
	}
	if global.inputtype=3
	{
		subtitle = "Tap `d  mid-air to stomp the enemies!"
		button = spr_mobilebuttons
		subimg = 2
		
	}
}