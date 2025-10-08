// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collisionupdate_semislope(player){
	var playercornerx
	if (image_xscale == -1)
		playercornerx = player.bbox_left
	else
		playercornerx = player.bbox_right-1
	var magicnumber = ((playercornerx-x)*image_xscale)-(-((player.bbox_bottom-1)-intendedy))-32
	//https://www.desmos.com/calculator/i6f5d4eaxk
	if (magicnumber < 1)
		y = intendedy
	else
		y = -2763
}