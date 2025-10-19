if global.char="Y"
{
	if global.inputtype=2
	{
		subtitle = "Press `d  in the air to perform a bounce!"
		button=spr_xboxbuttons
		subimg=2
	}
	else if global.inputtype=3
	{
		subtitle = "Tap `d  in the air to perform a bounce!"
		button=spr_mobilebuttons
		subimg=2
	}
	else if global.inputtype=0
	{
		subtitle = "Press "+keytostring(global.p1_downkey)+" in the air to perform a bounce!"
	}
}
if global.char="T"
{
	if global.inputtype=2
	{
		subtitle = "Press `d  again to perform a double-jump!"
		button=spr_xboxbuttons
		subimg=4
	}
	else if global.inputtype=3
	{
		subtitle = "Tap `d  again to perform a double-jump!"
		button=spr_mobilebuttons
		subimg=4
	}
	else if global.inputtype=0
	{
		subtitle = "Press "+keytostring(global.p1_jumpkey)+" to perform a double-jump!"
	}
}