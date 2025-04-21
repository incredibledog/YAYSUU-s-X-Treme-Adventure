/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_player) && !obj_player.vulnerable
{
	instance_destroy()
	if (!small)
	{
		with (obj_player)
			scr_player_trybounce()
	}
}