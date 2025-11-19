if global.trial || global.levelloadtype=loadtype.respawn
{
	global.currentsong=mus_chillfields_boss
}
else {
	global.currentsong=-1
}
scr_windowtitle("A Dastardly Creation... VS. Electro-Bot!")
obj_parallax.indoors=true