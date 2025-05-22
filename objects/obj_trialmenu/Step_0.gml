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
if global.key_rightp
{
	select+=1
	audio_play_sound(snd_move,1,false)
	changedlevel = true
}
select=clamp(select,0,6)

if (changedlevel)
{
	audio_sound_gain(playingmusic[prevselect], 0, 1000);
	audio_sound_gain(playingmusic[select], 1, 1000);
	switch select
	{
		case 0:
			currentlevel=room_tutorial
			endlevel=room_tutorial
			lvlname="Tutorial Stage"
			sprname=spr_tutorialscroll
			//newmusic = audio_play_sound(mus_trialmenu_t,1,true)
			break;
		case 1:
			currentlevel=room_chillfields_1
			endlevel=room_chillfields_1
			lvlname="Chill Fields Stage 1"
			sprname=spr_chillfields1scroll
			//newmusic = audio_play_sound(mus_trialmenu_cf1,1,true)
			break;
		case 2:
			currentlevel=room_chillfields_2
			endlevel=room_chillfields_2d
			lvlname="Chill Fields Stage 2"
			sprname=spr_chillfields2scroll
			//newmusic = audio_play_sound(mus_trialmenu_cf2,1,true)
			break;
		case 3:
			currentlevel=room_chillfields_boss
			endlevel=room_chillfields_boss
			lvlname="Vs. Electrobot"
			sprname=spr_chillfieldsbossscroll
			//newmusic = audio_play_sound(mus_trialmenu_cf3,1,true)
			break;
		case 4:
			currentlevel=room_mysticmanor_1
			endlevel=room_mysticmanor_1
			lvlname="Mystic Manor Stage 1"
			sprname=spr_mysticmanor1scroll
			//newmusic = audio_play_sound(mus_trialmenu_mm1,1,true)
			break;
		case 5:
			currentlevel=room_glowstickcity
			endlevel=room_glowstickcity
			lvlname="Glow Stick City (unfinished)"
			sprname=spr_tutorialscroll
			//newmusic = audio_play_sound(mus_trialmenu_gc,1,true)
			break;
		case 6:
			currentlevel=room_dev
			endlevel=room_dev
			lvlname="Fun Dev Room!"
			sprname=spr_tutorialscroll
			//newmusic = audio_play_sound(mus_trialmenu_gc,1,true)
			break;
	}

	ini_open("savedata.ini")
	hiscore=ini_read_real("records",string(endlevel)+string("_score"),0)
	timer = ini_read_real("records",string(endlevel)+string("_time"),359999)
	timestring=string_replace_all(string_format(floor(timer / 3600), 2, 0) + ":" + string_format(floor(timer / 60) % 60, 2, 0) + "." + string_format(timer % 60, 2, 0), " ", "0")
	ini_close()
}
changedlevel = false

if global.key_jumpp
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
	loadroom(currentlevel, loadtype.newlevel)
}
else if global.key_dashp
{
	audio_stop_all()
	audio_play_sound(snd_nahnvm,1,false)
	loadroom(room_charselect, loadtype.menu)
}