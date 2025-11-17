// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadnewstage(lifes = 3, stage){
	global.timer = 0
	global.timer = 0
	global.score = 0
	global.scoreadd = 0
	global.checkpoint=false
	global.firstroom=true
	global.coins=0
	global.coingoal = 100
	global.lives=lifes
	loadroom(stage, loadtype.newlevel)
}