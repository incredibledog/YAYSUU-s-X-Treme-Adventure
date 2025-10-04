function scr_p2changecharacter(char, skin){ // Forgive Me
	if (char == "Y")
	{
		global.p2playersprites[playersprite.idle] = spr_yaysuu_idle
		global.p2playersprites[playersprite.wait] = spr_yaysuu_wait
		global.p2playersprites[playersprite.walk] = spr_yaysuu_walk
		global.p2playersprites[playersprite.run] = spr_yaysuu_run
		global.p2playersprites[playersprite.brake] = spr_yaysuu_brake
		global.p2playersprites[playersprite.jumpstart] = spr_yaysuu_jump
		global.p2playersprites[playersprite.jumploop] = spr_yaysuu_jumploop
		global.p2playersprites[playersprite.fall] = spr_yaysuu_fall
		global.p2playersprites[playersprite.runjump] = spr_yaysuu_launchjump
		global.p2playersprites[playersprite.runfall] = spr_yaysuu_launch
		global.p2playersprites[playersprite.crouch] = spr_yaysuu_crouch
		global.p2playersprites[playersprite.dash] = spr_yaysuu_airdash
		global.p2playersprites[playersprite.slide] = spr_yaysuu_slide
		global.p2playersprites[playersprite.stomp] = spr_yaysuu_stomp
		global.p2playersprites[playersprite.ouchie] = spr_yaysuu_ouchie
		global.p2playersprites[playersprite.deaded] = spr_yaysuu_deaded
		global.p2playersprites[playersprite.bounce] = spr_yaysuu_spinball
		global.p2playersprites[playersprite.win] = spr_yaysuu_win
		global.p2playersprites[playersprite.launched] = spr_yaysuu_spinnykicked
		global.p2playersprites[playersprite.hangglide] = spr_yaysuu_hangglide
		global.p2playersprites[playersprite.golfstop] = spr_yaysuu_spinball
		global.p2playersprites[playersprite.talk_confused] = spr_yaysuu_talk_confused
	}
	else if (char == "T")
	{
		global.p2playersprites[playersprite.idle] = spr_teddy_idle
		global.p2playersprites[playersprite.wait] = spr_teddy_wait
		global.p2playersprites[playersprite.walk] = spr_teddy_walk
		global.p2playersprites[playersprite.run] = spr_teddy_run
		global.p2playersprites[playersprite.brake] = spr_teddy_brake
		global.p2playersprites[playersprite.jumpstart] = spr_teddy_jump
		global.p2playersprites[playersprite.jumploop] = spr_teddy_jump
		global.p2playersprites[playersprite.fall] = spr_teddy_fall
		global.p2playersprites[playersprite.runjump] = spr_teddy_launch
		global.p2playersprites[playersprite.runfall] = spr_teddy_launch
		global.p2playersprites[playersprite.crouch] = spr_teddy_crouch
		global.p2playersprites[playersprite.dash] = spr_teddy_dash
		global.p2playersprites[playersprite.slide] = spr_teddy_slide
		global.p2playersprites[playersprite.stomp] = spr_teddy_stomp
		global.p2playersprites[playersprite.ouchie] = spr_teddy_ouch
		global.p2playersprites[playersprite.deaded] = spr_teddy_die
		global.p2playersprites[playersprite.bounce] = spr_teddy_spinball
		global.p2playersprites[playersprite.win] = spr_teddy_win
		global.p2playersprites[playersprite.launched] = spr_teddy_die
		global.p2playersprites[playersprite.golfstop] = spr_teddy_spinball
		global.p2playersprites[playersprite.hangglide] = spr_teddy_hangglide
		global.p2playersprites[playersprite.wallslide] = spr_teddy_wallslide
		global.p2playersprites[playersprite.talk_confused] = spr_yaysuu_talk_confused
	}
	/*else if (char == "C")
	{
	}*/
	else
	{
		scr_debugmessage(char + " is not a valid character!")
		return;
	}
	global.p2char = char
}