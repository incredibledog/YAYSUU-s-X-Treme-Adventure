// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function skin_unload(){
	if (!global.spriteloaded)
		return
	global.spriteloaded = false
	sprite_delete(global.sprite_brake)
	sprite_delete(global.sprite_crouch)
	sprite_delete(global.sprite_dead)
	sprite_delete(global.sprite_fall)
	sprite_delete(global.sprite_idle)
	sprite_delete(global.sprite_jump)
	sprite_delete(global.sprite_launch)
	sprite_delete(global.sprite_launchjump)
	sprite_delete(global.sprite_ouch)
	sprite_delete(global.sprite_run)
	sprite_delete(global.sprite_slide)
	sprite_delete(global.sprite_stomp)
	sprite_delete(global.sprite_wait)
	sprite_delete(global.sprite_walk)
	sprite_delete(global.sprite_win)
	sprite_delete(global.sprite_airdash)
	sprite_delete(global.sprite_spinball)
}