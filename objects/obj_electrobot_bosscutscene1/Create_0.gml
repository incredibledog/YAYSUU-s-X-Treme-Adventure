/// @description Insert description here
// You can write your code in this editor
talking=false
bossname="ELECTRO-BOT"
stringchr=0
if global.trial || global.levelloadtype=loadtype.respawn
{
	global.cutscenestate=8 // CUTSCENES, ARE FOR STORY MODE!
	alarm_set(0,15)
}
else {
	global.cutscenestate=0
}
sprite_index=spr_electrobot_idle
//alarm_set(0,15)
global.bosshp=6