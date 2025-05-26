// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collisionupdate_semisolid(){
	if (obj_player.bbox_bottom - 1 > intendedy)
		y = -2763
	else
		y = intendedy
	enemycollision.x = x
	enemycollision.y = intendedy
}