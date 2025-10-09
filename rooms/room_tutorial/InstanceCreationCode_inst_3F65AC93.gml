if global.char="Y"
{
	if global.inputtype=2
	{
		subtitle = "Airdash over the gap by pressing B mid-air!"
	}
	else if global.inputtype=3
	{
		subtitle = "Airdash over the gap by tapping the DASH button midair!"
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