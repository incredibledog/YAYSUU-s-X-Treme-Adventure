// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_calcplatformdir(){
	var deltax = otherpointx - firstpointx
	var deltay = otherpointy - firstpointy
	if (abs(deltay) > abs(deltax))
		movementfacedir = 0
	else
		movementfacedir = sign(deltax)
}