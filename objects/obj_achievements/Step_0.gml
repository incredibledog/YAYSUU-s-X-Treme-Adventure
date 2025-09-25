/// @description Insert description here
// You can write your code in this editor
chos=clamp(chos,1,9)
if global.p1_key_rightp
{
	audio_play_sound(snd_move,1,false)
	chos++
}
if global.p1_key_leftp
{
	audio_play_sound(snd_move,1,false)
	chos--
}
if global.p1_key_menuquit
{
	audio_play_sound(snd_nahnvm,1,false)
	instance_destroy()
}
if global.p1_key_runp
{
	audio_play_sound(snd_kablooey,1,false)
	ini_open("savedata.ini")
	ini_section_delete("achievements")
	ini_close()
	getachievementdescriptions()
}