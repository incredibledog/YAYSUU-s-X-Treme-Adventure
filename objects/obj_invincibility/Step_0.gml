/// @description Insert description here
// You can write your code in this editor
x=obj_player.x
y=obj_player.y
depth=obj_player.depth-1
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
if !audio_is_playing(mus_invincibility) || obj_player.state == playerstates.dead
{
	instance_destroy()
}