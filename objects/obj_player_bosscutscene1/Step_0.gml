// walkin over to electrobot
if global.cutscenestate=0 && x<=160
{
	x+=2
	sprite_index=spr_yaysuu_walk
}
else if global.cutscenestate=0 {
	global.cutscenestate=1 // spew those words yaysuu the only playable character ever
}