/// @description Insert description here
// You can write your code in this editor
mycollision = instance_create_depth(x, y, depth - 1, obj_notsemisolid)
destroyedbyplayer = false
if (room == room_chillfields_2b || room == room_chillfields_2c)
{
	debrissprite = spr_rubbledebris_dark
	sprite_index = spr_rubble_cave
}
else
	debrissprite = spr_rubbledebris
breaksound = snd_breakrubble
hascollision = true
checkoffsetx = 0
checkoffsety = 0