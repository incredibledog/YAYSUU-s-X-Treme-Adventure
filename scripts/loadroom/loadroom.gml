enum loadtype
{
    newlevel,
	respawn,
	nextroom,
	menu
}
function loadroom (newroom, levelloadtype, instant = false){
	obj_fadeblack.fading = true
	obj_fadeblack.instaswitch = instant
	global.nextroom = newroom
	global.levelloadtype = levelloadtype
	global.oldroom = room
}