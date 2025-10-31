/// @description Insert description here
// You can write your code in this editor
if xoffset=632
	xoffset=0
else
	xoffset+=8

var prevselect = select
if global.key_leftp
{
	select-=1
	audio_play_sound(snd_move,1,false)
	changedlevel = true
}
else if global.key_rightp
{
	select+=1
	audio_play_sound(snd_move,1,false)
	changedlevel = true
}
select=clamp(select,0,5) // sorry no more dev room 3:

if (changedlevel)
{
	hiscore=ini_read_real("records",string(endlevel)+string("_score"),0)
	timer = ini_read_real("records",string(endlevel)+string("_time"),359999)
	timestring=string_replace_all(string_format(floor(timer / 3600), 2, 0) + ":" + string_format(floor(timer / 60) % 60, 2, 0) + "." + string_format(timer % 60, 2, 0), " ", "0")
	if hiscore>=2500
		rank=4
	else if hiscore>=2000
		rank=3
	else if hiscore>=1500
		rank=2
	else if hiscore>=1000
		rank=1
	else
		rank=0
}
changedlevel = false

if global.key_menuaccept
{
	audio_stop_all()
	audio_play_sound(snd_confirm,1,false)
	global.timer = 0
	global.score = 0
	global.scoreadd = 0
	global.checkpoint=false
	global.coins=0
	global.coingoal = 100
	global.lives=3
	loadroom(currentlevel, loadtype.jumbojosh)
}
else if global.key_menuquit
{
	audio_stop_all()
	audio_play_sound(snd_nahnvm,1,false)
	loadroom(room_charselect, loadtype.menu)
}