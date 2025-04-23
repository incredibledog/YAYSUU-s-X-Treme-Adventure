// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function touchingplayer(checkx, checky){
	return obj_player.hascollision && place_meeting(checkx, checky, obj_player)
}