/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player)) && global.coins<49
{
	instance_destroy()
	audio_play_sound(snd_coin,1,false)
	global.coins+=1
}
if (place_meeting(x,y,obj_player)) && global.coins=49
{
	instance_destroy()
	if global.hp=global.maxhp
	{
		audio_play_sound(snd_extralife,1,false)
		global.lives+=1
	}
	else {
		audio_play_sound(snd_heal,1,false)
		global.hp+=1
	}
	global.coins=0
}
