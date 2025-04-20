function preloadactualroom(){
if (global.newlevel)
{
	global.timer = 0
	global.score = 0
	global.checkpoint=false
	global.coins=0
	global.hp=global.maxhp
	global.lives=3
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
}