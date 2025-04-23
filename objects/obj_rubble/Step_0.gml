/// @description Insert description here
// You can write your code in this editor
var checkoffsetx
var checkoffsety
var hascollision = true
var resetplayerstate = false
if (!obj_player.vulnerable)
{
	if (obj_player.state == playerstates.stomp)
	{
		hascollision = !(obj_player.bbox_right > bbox_left && obj_player.bbox_left < bbox_right && obj_player.bbox_bottom < bbox_top)
		checkoffsetx = 0
		checkoffsety = obj_player.vsp * 2
	}
	else
	{
		if (obj_player.facingdirection == 1)
			hascollision = !(obj_player.bbox_bottom-1 > bbox_top && obj_player.bbox_top < bbox_bottom && obj_player.bbox_left < bbox_right)
		else
			hascollision = !(obj_player.bbox_bottom-1 > bbox_top && obj_player.bbox_top < bbox_bottom && obj_player.bbox_right > bbox_left)
		checkoffsetx = obj_player.hsp * 2
		checkoffsety = 0
	}
}
else if (obj_player.state == playerstates.bounce)
{
	hascollision = !(obj_player.bbox_right > bbox_left && obj_player.bbox_left < bbox_right && obj_player.bbox_top > bbox_bottom)
	checkoffsetx = 0
	checkoffsety = obj_player.vsp * 2
	resetplayerstate = true
}

if hascollision
{
	mycollision.mask_index = spr_playercollision
	mycollision.visible = global.showcollision
}
else
{
	mycollision.mask_index = -1
	mycollision.visible = false
	if touchingplayer(x - checkoffsetx, y - checkoffsety)
	{
		destroyedbyplayer = true
		instance_destroy()
		if (resetplayerstate)
			obj_player.newstate = playerstates.normal
	}
}