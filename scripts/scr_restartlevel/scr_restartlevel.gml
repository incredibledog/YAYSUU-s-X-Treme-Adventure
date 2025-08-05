// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_restartlevel(){
	global.timer = 0
	if global.trial
	{
		global.score = 0
	}
	global.scoreadd = 0
	global.checkpoint=false
	global.coins=0
	global.coingoal = 100
	switch (room)
	{
		default:
			loadroom(room, loadtype.newlevel)
			break;
		case room_chillfields_2b:
		case room_chillfields_2c:
		case room_chillfields_2d:
			loadroom(room_chillfields_2, loadtype.newlevel)
			break;
		case room_househub:
		case room_househub_extra:
			loadroom(room_glowstickcity, loadtype.newlevel)
			break;
	}
}