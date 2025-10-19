if global.char="Y"
{
	if global.inputtype=2
	{
		subtitle = "Airdash over the gap by pressing `d   mid-air!"
		button = spr_xboxbuttons
		subimg = 5
	}
	else if global.inputtype=3
	{
		subtitle = "Airdash over the gap by tapping the `d  button midair!"
		button = spr_mobilebuttons
		subimg = 5
	}
	else if global.inputtype=0
	{
		subtitle = "Airdash over the gap by pressing "+keytostring(global.p1_dashkey)+" mid-air!"
	}
}
if global.char="T"
{
	subtitle = "Use the double-jump to cross the gap!"
}