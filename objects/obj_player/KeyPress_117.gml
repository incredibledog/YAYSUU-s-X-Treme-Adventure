/// @description Insert description here
// You can write your code in this editor
if (global.indev)
{
	if !(state=playerstates.hangglide)
	{
		hangglidedir = facingdirection
		state = playerstates.hangglide
		newstate = playerstates.hangglide
	}
	else {
		state = playerstates.normal
		newstate = playerstates.normal
	}
}