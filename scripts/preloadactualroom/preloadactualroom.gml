function preloadactualroom(){
global.inlevel = (global.nextroom == room_chillfields_1 || global.nextroom == room_chillfields_2 || global.nextroom == room_chillfields_2b || global.nextroom == room_chillfields_2c || global.nextroom == room_chillfields_2d || global.nextroom == room_chillfields_boss || global.nextroom == room_mysticmanor_1 || global.nextroom == room_glowstickcity || global.nextroom == room_tutorial)
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
}
}