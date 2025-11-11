/// @description Insert description here
// You can write your code in this editor
showresults = false
if (global.levelloadtype == loadtype.newlevel || global.levelloadtype == loadtype.respawn)
{
	hide=false
	comboshowtimer = 0
	showncombo = 0
	if (!global.checkpoint && global.levelloadtype == loadtype.newlevel)
	{
		timer = 0
		timebonus=1200
	}
}
if global.levelloadtype == loadtype.newlevel
{
	global.score=0
	global.scoreadd=0
}