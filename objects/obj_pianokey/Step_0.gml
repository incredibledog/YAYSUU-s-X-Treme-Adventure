/// @description Insert description here
// You can write your code in this editor
if touchingplayer(x, y) && !hit
{
	hit=true
	audio_play_sound(snd_piano,1,false,1,0,pitch)
	image_index=1
}
if !touchingplayer(x, y) && hit
{
	hit=false
	image_index=0
}
