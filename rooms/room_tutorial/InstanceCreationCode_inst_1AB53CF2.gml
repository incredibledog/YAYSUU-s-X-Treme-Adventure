if global.char="Y"
{
	if global.inputtype=2
	{
		subtitle = "Press DOWN in the air to perform a bounce!"
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
		subtitle = "Press A again to perform a double-jump!"
	}
	else if global.inputtype=0
	{
		subtitle = "Press "+keytostring(global.p1_jumpkey)+" to perform a double-jump!"
	}
}