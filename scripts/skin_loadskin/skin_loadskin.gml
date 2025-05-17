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
	if (global.char == "Y")
	{
		global.sprite_airdash = skin_getsprite("airdash")
		global.sprite_spinball = skin_getsprite("spinball")
	}
	global.spriteloaded = true
}