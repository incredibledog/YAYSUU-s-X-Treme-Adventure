/// @description Insert description here
// You can write your code in this editor
if (touchingplayer(x,y))
{
	if (x < 0)
		obj_player.x = room_width + 32
	else
		obj_player.x = -32
}