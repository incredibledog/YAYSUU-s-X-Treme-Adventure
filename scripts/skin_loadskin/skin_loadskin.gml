// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function skin_loadskin(skinname){
	skin_unload()
	global.skinname = skinname
	if (skinname == "") //empty skinname means no custom skin active
	{
		switch (global.char)
		{
			case "Y":
				global.sprite_brake = spr_yaysuu_brake
				global.sprite_crouch = spr_yaysuu_crouch
				global.sprite_dead = spr_yaysuu_deaded
				global.sprite_fall = spr_yaysuu_fall
				global.sprite_idle = spr_yaysuu_idle
				global.sprite_jump = spr_yaysuu_jump
				global.sprite_launch = spr_yaysuu_launch
				global.sprite_launchjump = spr_yaysuu_launchjump
				global.sprite_ouch = spr_yaysuu_ouchie
				global.sprite_run = spr_yaysuu_run
				global.sprite_slide = spr_yaysuu_slide
				global.sprite_stomp = spr_yaysuu_stomp
				global.sprite_wait = spr_yaysuu_wait
				global.sprite_walk = spr_yaysuu_walk
				global.sprite_win = spr_yaysuu_win
				global.sprite_airdash = spr_yaysuu_airdash
				global.sprite_spinball = spr_yaysuu_spinball
				break
			case "T":
				global.sprite_brake = spr_teddy_brake
				global.sprite_crouch = spr_teddy_crouch
				global.sprite_dead = spr_teddy_die
				global.sprite_fall = spr_teddy_fall
				global.sprite_idle = spr_teddy_idle
				global.sprite_jump = spr_teddy_jump
				global.sprite_launch = spr_teddy_launch
				global.sprite_launchjump = spr_teddy_launchjump
				global.sprite_ouch = spr_teddy_ouch
				global.sprite_run = spr_teddy_run
				global.sprite_slide = spr_teddy_slide
				global.sprite_stomp = spr_teddy_stomp
				global.sprite_wait = spr_teddy_wait
				global.sprite_walk = spr_teddy_walk
				global.sprite_win = spr_teddy_win
				global.sprite_dash = spr_teddy_dash
				break
			case "C":
				global.sprite_brake = spr_cotton_brake
				global.sprite_crouch = spr_cotton_crouch
				global.sprite_dead = spr_cotton_dieded
				global.sprite_fall = spr_cotton_fall
				global.sprite_idle = spr_cotton_idle
				global.sprite_jump = spr_cotton_jump
				global.sprite_launch = spr_cotton_fall
				global.sprite_launchjump = spr_cotton_jump
				global.sprite_ouch = spr_cotton_ouchie
				global.sprite_run = spr_cotton_run
				global.sprite_slide = spr_cotton_slide
				global.sprite_stomp = spr_cotton_ball
				global.sprite_wait = spr_cotton_wait
				global.sprite_walk = spr_cotton_walk
				global.sprite_win = spr_cotton_win
				global.sprite_ball = spr_cotton_ball
				global.sprite_fly = spr_cotton_fly
				break
		}
		return
	}
	ini_open(working_directory + "custom/character/" + skinname + "/info.ini")
	global.char = ini_read_string("character", "basechar", "Y")
	ini_close()
	global.sprite_brake = skin_getsprite("brake")
	global.sprite_crouch = skin_getsprite("crouch")
	global.sprite_dead = skin_getsprite("dead")
	global.sprite_fall = skin_getsprite("fall")
	global.sprite_idle = skin_getsprite("idle")
	global.sprite_jump = skin_getsprite("jump")
	global.sprite_launch = skin_getsprite("launch")
	global.sprite_launchjump = skin_getsprite("launchjump")
	global.sprite_ouch = skin_getsprite("ouch")
	global.sprite_run = skin_getsprite("run")
	global.sprite_slide = skin_getsprite("slide")
	global.sprite_stomp = skin_getsprite("stomp")
	global.sprite_wait = skin_getsprite("wait")
	global.sprite_walk = skin_getsprite("walk")
	global.sprite_win = skin_getsprite("win")
	switch (global.char)
	{
		case "Y":
			global.sprite_airdash = skin_getsprite("airdash")
			global.sprite_spinball = skin_getsprite("spinball")
			break
		case "T":
			global.sprite_dash = skin_getsprite("dash")
			break
		case "C":
			global.sprite_ball = skin_getsprite("ball")
			global.sprite_fly = skin_getsprite("fly")
			break
	}
	global.spriteloaded = true
}