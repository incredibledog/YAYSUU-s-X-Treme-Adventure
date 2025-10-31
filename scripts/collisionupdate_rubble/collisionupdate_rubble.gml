// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collisionupdate_rubble(player){
	if (player == global.mainplayer)
		hascollision = true
	
	if (!strong || player.char != "Y")
	{
		if (!player.vulnerable)
		{
			if (player.state == playerstates.stomp)
			{
				hascollision = !(player.bbox_right > bbox_left && player.bbox_left < bbox_right && player.bbox_bottom < bbox_top)
				checkoffsetx = 0
				checkoffsety = player.vsp * 2
			}
			else if (player.state == playerstates.bounce)
			{
				hascollision = false
				checkoffsetx = player.hsp * 2
				checkoffsety = player.vsp * 2
			}
			else
			{
				if (player.facingdirection == 1)
					hascollision = !(player.bbox_bottom-1 > bbox_top && player.bbox_top < bbox_bottom && player.bbox_left < bbox_right)
				else
					hascollision = !(player.bbox_bottom-1 > bbox_top && player.bbox_top < bbox_bottom && player.bbox_right > bbox_left)
				checkoffsetx = player.hsp * 2
				checkoffsety = 0
			}
		}
		else if (player.state == playerstates.bounce || player.state == playerstates.launched)
		{
			hascollision = !(player.bbox_right > bbox_left && player.bbox_left < bbox_right && player.bbox_top > bbox_bottom)
			checkoffsetx = 0
			checkoffsety = player.vsp * 2
		}
	}
	else
		hascollision = true
	
	//oei oei oei... not change collisoin? honestly this entire saga was stupid
	if hascollision
		mycollision.y = y
	else
		mycollision.y = -2763
}