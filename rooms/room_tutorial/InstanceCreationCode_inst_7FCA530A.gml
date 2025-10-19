if global.inputtype = 2
{
	subtitle = "Hold down `d  for a boost of speed!"
	button = spr_xboxbuttons
	subimg = 6
}
else if global.inputtype = 3
{
	subtitle = "Hold down `d  for a boost of speed!"
	button = spr_mobilebuttons
	subimg = 6
}
else if global.inputtype = 0
{
	subtitle = "Hold down "+keytostring(global.p1_runkey)+" for a boost of speed!"
}