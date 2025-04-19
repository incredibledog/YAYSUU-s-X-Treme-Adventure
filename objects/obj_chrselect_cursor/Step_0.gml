/// @description Insert description here
// You can write your code in this editor
chos=clamp(chos,1,2)
if chos=1
{
	x=224
}
if chos=2
{
	x=416
}
if global.key_rightp && selected=false
{
	audio_play_sound(snd_move,1,false)
	chos+=1
}
if global.key_leftp && selected=false
{
	audio_play_sound(snd_move,1,false)
	chos-=1
}
if (global.key_start || global.key_jump) && chos=1 && selected=false
{
	global.char="Y"
	delay=room_speed*2
	selected=true
	audio_play_sound(snd_confirm,1,false)
	audio_play_sound(snd_yaysuuselect,1,false)
}
if (global.key_start || global.key_jump) && chos=2 && selected=false
{
	global.char="T"
	delay=room_speed*2
	selected=true
	audio_play_sound(snd_confirm,1,false)
	audio_play_sound(snd_teddyselect,1,false)
}
if global.key_dash
{
	global.nextroom=room_mainmenu
	obj_fadeblack.fading=true
	audio_play_sound(snd_nahnvm,1,false)
}
if delay=0 && selected=true
{
	obj_fadeblack.fading=true
}
if delay>0 && selected=true
{
	delay--
}