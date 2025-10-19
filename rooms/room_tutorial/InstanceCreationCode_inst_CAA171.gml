if global.inputtype=2
{
	subtitle="Press `d  to jump!"
	button=spr_xboxbuttons
	subimg=4
}
else if global.inputtype=3
{
	subtitle="Tap the `d  button to jump!"
	button=spr_mobilebuttons
	subimg=4
}
else if global.inputtype=0
{
	subtitle = "Press "+keytostring(global.p1_jumpkey)+" to jump!"
}