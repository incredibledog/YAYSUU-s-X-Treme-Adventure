/// @description Insert description here
// You can write your code in this editor
showresults = false
if (global.levelloadtype == loadtype.newlevel || global.levelloadtype == loadtype.respawn)
{
	global.hp = 3;
	global.maxhp = 3;
	hide=false
	comboshowtimer = 0
	showncombo = 0
	
	if (global.levelloadtype == loadtype.newlevel)
	{
		timer = 0
		timebonus=1200
	}
	if global.inboss
	{
		global.bosshp = 6
		global.maxbosshp = 6
	}
}