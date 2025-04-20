window_set_caption("Choose YOUR Buddy!")
if global.trial=false
{
	global.nextroom=room_intro
}
else {
	global.nextroom=room_trialmenu
}
//global.hubstart=false
global.currentsong = mus_chrselect