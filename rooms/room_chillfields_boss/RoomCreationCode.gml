if global.trial || global.levelloadtype=loadtype.respawn
{
	global.currentsong=mus_chillfields_boss
}
else {
	global.currentsong=mus_cutscene
}
scr_windowtitle("A Dastardly Creation... VS. Electro-Bot!")
obj_parallax.indoors=true