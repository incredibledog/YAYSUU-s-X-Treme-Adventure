enum loadtype
{
    newlevel,
	respawn,
	nextroom,
	menu
}
function loadroom (newroom, levelloadtype){
	obj_fadeblack.fading = true
	global.nextroom = newroom
	global.levelloadtype = levelloadtype
	global.oldroom = room
}