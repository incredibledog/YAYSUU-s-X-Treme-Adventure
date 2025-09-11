/// @description Insert description here
// You can write your code in this editor
x=obj_player.x
y=obj_player.y
depth=obj_player.depth-1
if invtimer>0
{
	invtimer--
}
if !audio_is_paused(global.currentsong) && audio_is_playing(mus_invincibility)
{
	audio_pause_sound(global.currentsong)
}
if trailtimer>0
	trailtimer--
else
{
	instance_create_depth(x,y,depth,obj_invincibility_trail)
	trailtimer=30
}
if invtimer=0 || obj_player.state == playerstates.dead || obj_player.state==playerstates.win
{
	instance_destroy()
}