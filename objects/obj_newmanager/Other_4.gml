if (global.inlevel)
{
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