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
	fireass,
	wallslide,
	lifeicon,
	lifemonitor
}
function scr_setupcharacter(char, skin)
{
	if (global.invertskin)
		skin = 1-skin
	if (char == "Y")
	{
		if (skin == 1)
		{
			playersprites[playersprite.idle] = spr_yan_idle
			playersprites[playersprite.wait] = spr_yan_dance
			playersprites[playersprite.walk] = spr_yan_walk
			playersprites[playersprite.run] = spr_yan_run
			playersprites[playersprite.brake] = spr_yan_brake
			playersprites[playersprite.jumpstart] = spr_yan_jump
			playersprites[playersprite.jumploop] = spr_yan_jumploop
			playersprites[playersprite.fall] = spr_yan_fall
			playersprites[playersprite.runjump] = spr_yan_runjump
			playersprites[playersprite.runfall] = spr_yan_runfall
			playersprites[playersprite.crouch] = spr_yan_crouch
			playersprites[playersprite.dash] = spr_yan_airdash
			playersprites[playersprite.slide] = spr_yan_slide
			playersprites[playersprite.stomp] = spr_yan_stomp
			playersprites[playersprite.ouchie] = spr_yan_AKJDHSAUUAIOFSDIHJDHGV
			playersprites[playersprite.deaded] = spr_yan_dead
			playersprites[playersprite.bounce] = spr_yan_bounce
			playersprites[playersprite.win] = spr_yan_win
			playersprites[playersprite.launched] = spr_yan_dead
			playersprites[playersprite.hangglide] = spr_yaysuu_hangglide
			playersprites[playersprite.golfstop] = spr_yan_dance
			playersprites[playersprite.lifeicon] = spr_yanlifeicon
			playersprites[playersprite.lifemonitor] = spr_lifemonitor_yan
		}
		else
		{
			playersprites[playersprite.idle] = spr_yaysuu_idle
			playersprites[playersprite.wait] = spr_yaysuu_wait
			playersprites[playersprite.walk] = spr_yaysuu_walk
			playersprites[playersprite.run] = spr_yaysuu_run
			playersprites[playersprite.brake] = spr_yaysuu_brake
			playersprites[playersprite.jumpstart] = spr_yaysuu_jump
			playersprites[playersprite.jumploop] = spr_yaysuu_jumploop
			playersprites[playersprite.fall] = spr_yaysuu_fall
			playersprites[playersprite.runjump] = spr_yaysuu_launchjump
			playersprites[playersprite.runfall] = spr_yaysuu_launch
			playersprites[playersprite.crouch] = spr_yaysuu_crouch
			playersprites[playersprite.dash] = spr_yaysuu_airdash
			playersprites[playersprite.slide] = spr_yaysuu_slide
			playersprites[playersprite.stomp] = spr_yaysuu_stomp
			playersprites[playersprite.ouchie] = spr_yaysuu_ouchie
			playersprites[playersprite.deaded] = spr_yaysuu_deaded
			playersprites[playersprite.bounce] = spr_yaysuu_spinball
			playersprites[playersprite.win] = spr_yaysuu_win
			playersprites[playersprite.launched] = spr_yaysuu_spinnykicked
			playersprites[playersprite.hangglide] = spr_yaysuu_hangglide
			playersprites[playersprite.fireass] = spr_yaysuu_fireass
			playersprites[playersprite.golfstop] = spr_yaysuu_spinball
			playersprites[playersprite.lifeicon] = spr_yaysuulifeicon
			playersprites[playersprite.lifemonitor] = spr_lifemonitor_y
		}
	}
	else if (char == "T")
	{
		playersprites[playersprite.idle] = spr_teddy_idle
		playersprites[playersprite.wait] = spr_teddy_wait
		playersprites[playersprite.walk] = spr_teddy_walk
		playersprites[playersprite.run] = spr_teddy_run
		playersprites[playersprite.brake] = spr_teddy_brake
		playersprites[playersprite.jumpstart] = spr_teddy_jump
		playersprites[playersprite.jumploop] = spr_teddy_jumploop
		playersprites[playersprite.fall] = spr_teddy_fall
		playersprites[playersprite.runjump] = spr_teddy_launch
		playersprites[playersprite.runfall] = spr_teddy_launch
		playersprites[playersprite.crouch] = spr_teddy_crouch
		playersprites[playersprite.dash] = spr_teddy_dash
		playersprites[playersprite.slide] = spr_teddy_slide
		playersprites[playersprite.stomp] = spr_teddy_stomp
		playersprites[playersprite.ouchie] = spr_teddy_ouch
		playersprites[playersprite.deaded] = spr_teddy_die
		playersprites[playersprite.bounce] = spr_teddy_spinball
		playersprites[playersprite.win] = spr_teddy_win
		playersprites[playersprite.launched] = spr_teddy_die
		playersprites[playersprite.golfstop] = spr_teddy_spinball
		playersprites[playersprite.hangglide] = spr_teddy_hangglide
		playersprites[playersprite.fireass] = spr_teddy_fireass
		playersprites[playersprite.wallslide] = spr_teddy_wallslide
		playersprites[playersprite.lifeicon] = spr_teddylifeicon
		playersprites[playersprite.lifemonitor] = spr_lifemonitor_t
	}
	else
	{
		scr_debugmessage(char + " is not a valid character!")
		return;
	}
}