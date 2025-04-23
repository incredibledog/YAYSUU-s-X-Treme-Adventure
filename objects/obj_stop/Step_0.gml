/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && !goaway
{
	goaway=true
	audio_play_sound(snd_stopngo,1,false)
	obj_player.newstate = playerstates.golfstop
}
else if goaway && obj_player.state != playerstates.golfstop
	image_alpha-=0.1
if image_alpha=0
	instance_destroy()