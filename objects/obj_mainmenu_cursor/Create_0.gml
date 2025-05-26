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
}
image_speed=0
selected=false
delay=0
if os_type=os_android && !gamepad_is_connected(0)
{
	image_alpha=0
}
nextroom = -1