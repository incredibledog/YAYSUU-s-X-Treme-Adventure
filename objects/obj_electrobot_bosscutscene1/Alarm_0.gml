/// @description Insert description here
// You can write your code in this editor
if stringchr<string_length(bossname)
{
	stringchr++
	audio_play_sound(snd_typewriterclick,1,false,global.sndvol)
	alarm_set(0,global.quickmenu ? 1 : 15)
}
else
{
	alarm_set(1,global.quickmenu ? 10 : 60)
}