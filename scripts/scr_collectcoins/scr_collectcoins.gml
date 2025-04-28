// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collectcoins(amount){
	global.coins += amount
	if (global.coins < 0)
		global.coins = 0
	if (amount > 0)
	{
		if room == room_glowstickcity
			audio_play_sound(snd_uncannycoin,1,false)
		else if (global.char == "C")
			audio_play_sound(snd_balloon,1,false)
		else
			audio_play_sound(snd_coin,1,false)
	}
	if (global.coins >= global.coingoal)
	{
		global.coingoal += 100
		if (global.hp == global.maxhp)
		{
			global.lives++
			audio_play_sound(snd_extralife,1,false)
		}
		else
		{
			global.hp++
			audio_play_sound(snd_heal,1,false,3)
		}
	}
}