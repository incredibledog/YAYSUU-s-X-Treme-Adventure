/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y)
{
	instance_destroy()
	audio_play_sound(coinsound,1,false)
	global.coins++
	if global.coins % 100 == 0
	{
		instance_destroy()
		if global.hp = global.maxhp
		{
			instance_create_depth(0,0,depth,obj_lifeitem)
		}
		else
		{
			audio_play_sound(snd_heal,1,false,3)
			global.hp+=1
		}
	}
}