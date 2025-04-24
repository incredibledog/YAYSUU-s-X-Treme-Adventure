function preloadactualroom(){
	global.inlevel = (global.nextroom == room_chillfields_1 || global.nextroom == room_chillfields_2 || global.nextroom == room_chillfields_2b || global.nextroom == room_chillfields_2c || global.nextroom == room_chillfields_2d || global.nextroom == room_chillfields_boss || global.nextroom == room_mysticmanor_1 || global.nextroom == room_glowstickcity || global.nextroom == room_tutorial || global.nextroom == room_dev)
	if (global.newlevel)
	{
		//aaaaaa
	}
	if (global.inlevel)
	{
		global.scoreadd = 0
		global.hp=global.maxhp
	}
	global.jumpscare = false
}