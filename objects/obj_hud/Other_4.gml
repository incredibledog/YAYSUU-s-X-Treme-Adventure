/// @description Insert description here
// You can write your code in this editor
showresults = false
if (global.levelloadtype == loadtype.newlevel || global.levelloadtype == loadtype.respawn)
{
	hide=false
	comboshowtimer = 0
	showncombo = 0
	if (!global.checkpoint)
	{
		timer = 0
		timebonus=1200
	}
}