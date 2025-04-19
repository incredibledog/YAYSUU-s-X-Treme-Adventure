/// @description Insert description here
// You can write your code in this editor
if stringchr<string_length(bossname)
{
	stringchr++
	audio_play_sound(snd_typewriterclick,1,false)
	alarm_set(0,room_speed*0.25)
}
else
{
	alarm_set(1,room_speed)
}