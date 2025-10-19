if global.inputtype=2
{
	subtitle="Press `d  while grounded to attack the enemy!"
	button=spr_xboxbuttons
	subimg=5
}
else if global.inputtype=3
{
	subtitle="Tap `d  while grounded to attack the enemy!"
	button=spr_mobilebuttons
	subimg=5
}
else if global.inputtype=0
{
	subtitle="Press "+keytostring(global.p1_dashkey)+" while grounded to attack the enemy!"
}