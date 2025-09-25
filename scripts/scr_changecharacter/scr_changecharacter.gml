enum playersprite
{
	idle,
	wait,
	walk,
	run,
	brake,
	jumpstart,
	jumploop,
	fall,
	runjump,
	runfall,
	crouch,
	dash,
	slide,
	stomp,
	ouchie,
	deaded,
	bounce,
	win,
	launched,
	golfstop,
	hangglide,
	wallslide
}

function scr_changecharacter(char){
	if (char == "Y")
	{
		global.playersprites[playersprite.idle] = spr_yaysuu_idle
		global.playersprites[playersprite.wait] = spr_yaysuu_wait
		global.playersprites[playersprite.walk] = spr_yaysuu_walk
		global.playersprites[playersprite.run] = spr_yaysuu_run
		global.playersprites[playersprite.brake] = spr_yaysuu_brake
		global.playersprites[playersprite.jumpstart] = spr_yaysuu_jump
		global.playersprites[playersprite.jumploop] = spr_yaysuu_jumploop
		global.playersprites[playersprite.fall] = spr_yaysuu_fall
		global.playersprites[playersprite.runjump] = spr_yaysuu_launchjump // 
		global.playersprites[playersprite.runfall] = spr_yaysuu_launch
		global.playersprites[playersprite.crouch] = spr_yaysuu_crouch
		global.playersprites[playersprite.dash] = spr_yaysuu_airdash
		global.playersprites[playersprite.slide] = spr_yaysuu_slide
		global.playersprites[playersprite.stomp] = spr_yaysuu_stomp
		global.playersprites[playersprite.ouchie] = spr_yaysuu_ouchie
		global.playersprites[playersprite.deaded] = spr_yaysuu_deaded
		global.playersprites[playersprite.bounce] = spr_yaysuu_spinball
		global.playersprites[playersprite.win] = spr_yaysuu_win
		global.playersprites[playersprite.launched] = spr_yaysuu_spinnykicked
		global.playersprites[playersprite.hangglide] = spr_yaysuu_hangglide
		global.playersprites[playersprite.golfstop] = spr_yaysuu_spinball
	}
	else if (char == "T")
	{
		global.playersprites[playersprite.idle] = spr_teddy_idle
		global.playersprites[playersprite.wait] = spr_teddy_wait
		global.playersprites[playersprite.walk] = spr_teddy_walk
		global.playersprites[playersprite.run] = spr_teddy_run
		global.playersprites[playersprite.brake] = spr_teddy_brake
		global.playersprites[playersprite.jumpstart] = spr_teddy_jump
		global.playersprites[playersprite.jumploop] = spr_teddy_jump
		global.playersprites[playersprite.fall] = spr_teddy_fall
		global.playersprites[playersprite.runjump] = spr_teddy_launch
		global.playersprites[playersprite.runfall] = spr_teddy_launch
		global.playersprites[playersprite.crouch] = spr_teddy_crouch
		global.playersprites[playersprite.dash] = spr_teddy_dash
		global.playersprites[playersprite.slide] = spr_teddy_slide
		global.playersprites[playersprite.stomp] = spr_teddy_stomp
		global.playersprites[playersprite.ouchie] = spr_teddy_ouch
		global.playersprites[playersprite.deaded] = spr_teddy_die
		global.playersprites[playersprite.bounce] = spr_teddy_spinball
		global.playersprites[playersprite.win] = spr_teddy_win
		global.playersprites[playersprite.launched] = spr_teddy_die
		global.playersprites[playersprite.golfstop] = spr_teddy_spinball
		global.playersprites[playersprite.hangglide] = spr_yaysuu_hangglide // PRACE HOLDUH!
		global.playersprites[playersprite.wallslide] = spr_teddy_wallslide // prace holduh no longer
	}
	/*else if (char == "C")
	{
	}*/
	else
	{
		scr_debugmessage(char + " is not a valid character!")
		return;
	}
	global.char = char
}