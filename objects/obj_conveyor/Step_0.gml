/// @description Insert description here
// You can write your code in this editor
if (touchingplayer(x, y-1) && obj_player.grounded)
{
	obj_player.x += conveyorspeed
	playertouching = true
}
else if (playertouching)
{
	obj_player.hsp +=conveyorspeed
	playertouching = false
}