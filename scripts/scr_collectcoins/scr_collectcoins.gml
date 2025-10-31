// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collectcoins(amount){
	global.coins += amount
	if (global.coins < 0)
		global.coins = 0
	if room == room_glowstickcity
		audio_play_sound(snd_uncannycoin,1,false)
	else if (global.char == "C")
		audio_play_sound(snd_balloon,1,false)
	else
		audio_play_sound(snd_coin,1,false)
	if (global.coins >= global.coingoal)
	{
		global.coingoal += 100
		if (global.hp == global.maxhp)
		{
			with (instance_create_layer(320+(instance_number(obj_itemdefault)*32),416,"gui",obj_itemdefault))
			{
				depth = global.itempopupdepth
				if global.char = "Y"
				{
					sprite_index=spr_itemlife_y
				}
				else if global.char = "T"
				{
					sprite_index=spr_itemlife_t
				}
				audio_pause_sound(global.currentsong)
				audio_play_sound(snd_extralife,1,false)
			}
		}
		else
		{
			global.hp++
			audio_play_sound(snd_heal,1,false,3)
		}
	}
}