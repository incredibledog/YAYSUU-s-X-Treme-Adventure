/// @description Insert description here
// You can write your code in this editor
global.inv=true
trailtimer=30
invtimer=17*global.defaultfps
x=obj_player.x
y=obj_player.y
if audio_is_playing(global.currentsong)
{
	audio_pause_sound(global.currentsong)
}
audio_play_sound(mus_invincibility,1,false,global.sndvol)