global.inlevel = (global.nextroom == room_chillfields_1 || global.nextroom == room_chillfields_2 || global.nextroom == room_chillfields_2b || global.nextroom == room_chillfields_2c || global.nextroom == room_chillfields_2d || global.nextroom == room_chillfields_boss || global.nextroom == room_mysticmanor_1 || global.nextroom == room_glowstickcity || global.nextroom == room_tutorial)
if (global.newlevel)
{
	global.timer = 0
	global.score = 0
	global.checkpoint=false
	global.coins=0
	global.hp=global.maxhp
}
if (global.inlevel)
{
	global.scoreadd = 0
	
	if global.checkpoint == true && instance_exists(obj_checkpoint)
	{
		obj_player.x = obj_checkpoint.x
		obj_player.y = obj_checkpoint.y
	}
	else
	{
		obj_player.x = obj_spawn.x
		obj_player.y = obj_spawn.y
	}
}
if (global.currentsong == -1)
	audio_stop_all()
else if !audio_is_playing(global.currentsong)
{
	audio_stop_all()
	audio_play_sound(global.currentsong, 1, true);
}