/// @description Insert description here
// You can write your code in this editor
chos=clamp(chos,1,9)
if global.key_rightp
{
	audio_play_sound(snd_move,1,false)
	chos++
}
if global.key_leftp
{
	audio_play_sound(snd_move,1,false)
	chos--
}
if global.key_dashp
{
	audio_play_sound(snd_nahnvm,1,false)
	instance_destroy()
}
if global.key_runp
{
	audio_play_sound(snd_kablooey,1,false)
	ini_open("savedata.ini")
	ini_section_delete("achievements")
	ini_close()
	getachievementdescriptions()
}