if global.inputtype=2
{
	subtitle="Press A to jump!"
}
else if global.inputtype=3
{
	subtitle="Tap the JUMP button to jump!"
}
else if global.inputtype=0
{
	subtitle = "Press "+keytostring(global.p1_jumpkey)+" to jump!"
}