/// @description Insert description here
// You can write your code in this editor
var checkoffsetx
var checkoffsety
var hascollision = true
if (!obj_player.vulnerable)
{
	if (obj_player.state == playerstates.stomp)
	{
		hascollision = !(obj_player.x + 32 > x && obj_player.x - 32 < x + 32 && obj_player.y + 32 < y)
		checkoffsetx = 0
		checkoffsety = obj_player.vsp
	}
	else
	{
		if (obj_player.facingdirection == 1)
			hascollision = !(obj_player.y + 32 > y && obj_player.y - 32 < y + 32 && obj_player.x - 32 < x)
		else
			hascollision = !(obj_player.y + 32 > y && obj_player.y - 32 < y + 32 && obj_player.x + 32 > x)
		checkoffsetx = obj_player.hsp
		checkoffsety = 0
	}
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
	if place_meeting(x - checkoffsetx, y - checkoffsety, obj_player)
		instance_destroy()
}