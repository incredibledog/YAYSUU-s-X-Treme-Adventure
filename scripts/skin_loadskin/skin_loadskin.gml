// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function skin_loadskin(skinname){
	global.skinname = skinname
	ini_open("custom/character/" + skinname + "/info.ini")
	global.char = ini_read_string("character", "basechar", "Y")
	ini_close()
	global.sprite_idle = skin_getsprite("idle")
	global.sprite_brake = skin_getsprite("brake")
	global.sprite_crouch = skin_getsprite("crouch")
	global.sprite_dead = skin_getsprite("dead")
	global.sprite_fall = skin_getsprite("fall")
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
}