/// @description Insert description here
// You can write your code in this editor
switch (global.prevroom)
{
	default:
		if (global.trial)
			chos=2
		else
			chos=1
		break
	case room_options:
		chos=3
		break
	case room_extras:
		chos=4
		break
}
image_speed=0
selected=false
dedede=0
delay=0
menustring="TEST STRING!! "
if global.inputtype=3
{
	image_alpha=0
}
nextroom = -1