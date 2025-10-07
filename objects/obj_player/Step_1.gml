/// @description Insert description here
// You can write your code in this editor
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
	wallslide,
}
if real(self.id) != global.otherplayer && isotherplayer // anti mitosis
{
	instance_destroy()
}
showarrow = false // why is this here
//to stop showing arrow obviously
if !instance_exists(obj_stageclear)
{
	if !issecondplayer
	{
		key_left=global.key_left
		key_leftp=global.key_leftp
		key_right=global.key_right
		key_rightp=global.key_rightp
		key_down=global.key_down
		key_downp=global.key_downp
		key_up=global.key_up
		key_upp=global.key_upp
		key_jump=global.key_jump
		key_jumpp=global.key_jumpp
		key_dash=global.key_dash
		key_dashp=global.key_dashp
		key_run=global.key_run
		key_runp=global.key_runp
	}
	else
	{
		key_left=global.p2_key_left
		key_leftp=global.p2_key_leftp
		key_right=global.p2_key_right
		key_rightp=global.p2_key_rightp
		key_down=global.p2_key_down
		key_downp=global.p2_key_downp
		key_up=global.p2_key_up
		key_upp=global.p2_key_upp
		key_jump=global.p2_key_jump
		key_jumpp=global.p2_key_jumpp
		key_dash=global.p2_key_dash
		key_dashp=global.p2_key_dashp
		key_run=global.p2_key_run
		key_runp=global.p2_key_runp
	}
	if !isotherplayer
	{
		char=global.char
	}
	else {
		char=global.p2char
	}
}
else {
	key_left=false
	key_leftp=false
	key_right=false
	key_rightp=false
	key_down=false
	key_downp=false
	key_up=false
	key_upp=false
	key_jump=false
	key_jumpp=false
	key_dash=false
	key_dashp=false
	key_run=false
	key_runp=false
}
if (char == "Y")
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
	playersprites[playersprite.golfstop] = spr_yaysuu_spinball
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
	playersprites[playersprite.wallslide] = spr_teddy_wallslide
}
/*else if (char == "C")
{
}*/
else
{
	scr_debugmessage(char + " is not a valid character!")
	return;
}
