/// @description Insert description here
// You can write your code in this editor
x=obj_player.x
y=obj_player.y
if trailtimer=0
{
	instance_create_depth(x,y,depth,obj_invincibility_trail)
	trailtimer=room_speed*0.5
}
if trailtimer>0
{
	trailtimer--
}
if !audio_is_playing(mus_invincibility) || obj_player.dieded=true
{
	audio_resume_sound(global.currentsong)
	global.inv=0
	instance_destroy()
}