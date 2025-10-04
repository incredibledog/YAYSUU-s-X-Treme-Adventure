// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collisionupdate_rubble(){
	var whichplayer = scr_temphacky_closestplayer()
	hascollision = true
	if (!whichplayer.vulnerable)
	{
		if (whichplayer.state == playerstates.stomp)
		{
			hascollision = !(whichplayer.bbox_right > bbox_left && whichplayer.bbox_left < bbox_right && whichplayer.bbox_bottom < bbox_top)
			checkoffsetx = 0
			checkoffsety = whichplayer.vsp * 2
		}
		else if (whichplayer.state == playerstates.bounce)
		{
			hascollision = false
			checkoffsetx = whichplayer.hsp * 2
			checkoffsety = whichplayer.vsp * 2
		}
		else
		{
			if (whichplayer.facingdirection == 1)
				hascollision = !(whichplayer.bbox_bottom-1 > bbox_top && whichplayer.bbox_top < bbox_bottom && whichplayer.bbox_left < bbox_right)
			else
				hascollision = !(whichplayer.bbox_bottom-1 > bbox_top && whichplayer.bbox_top < bbox_bottom && whichplayer.bbox_right > bbox_left)
			checkoffsetx = whichplayer.hsp * 2
			checkoffsety = 0
		}
	}
	else if (whichplayer.state == playerstates.bounce || whichplayer.state == playerstates.launched)
	{
		hascollision = !(whichplayer.bbox_right > bbox_left && whichplayer.bbox_left < bbox_right && whichplayer.bbox_top > bbox_bottom)
		checkoffsetx = 0
		checkoffsety = whichplayer.vsp * 2
	}
}