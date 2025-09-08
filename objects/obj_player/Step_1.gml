/// @description Insert description here
// You can write your code in this editor
showarrow = false // why is this here
if !instance_exists(obj_stageclear) // PLAYER 1 CONTROLS. all controls are disabled when the stageclear appears so you can't exploit it
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