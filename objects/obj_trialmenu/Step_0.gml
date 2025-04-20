/// @description Insert description here
// You can write your code in this editor
if xoffset=632
	xoffset=0
else
	xoffset+=8

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
select=clamp(select,0,5)

if (changedlevel)
{
	var musicposition = audio_sound_get_track_position(playingmusic)
	//audio_stop_sound(playingmusic)
	audio_stop_all()
	switch select
	{
		case 0:
			currentlevel=room_tutorial
			endlevel=room_tutorial
			lvlname="Tutorial Stage"
			sprname=spr_tutorialscroll
			playingmusic = audio_play_sound(mus_trialmenu_t,1,true)
			audio_sound_set_track_position(playingmusic, musicposition)
			break;
		case 1:
			currentlevel=room_chillfields_1
			endlevel=room_chillfields_1
			lvlname="Chill Fields Stage 1"
			sprname=spr_chillfields1scroll
			playingmusic = audio_play_sound(mus_trialmenu_cf1,1,true)
			audio_sound_set_track_position(playingmusic, musicposition)
			break;
		case 2:
			currentlevel=room_chillfields_2
			endlevel=room_chillfields_2d
			lvlname="Chill Fields Stage 2"
			sprname=spr_chillfields2scroll
			playingmusic = audio_play_sound(mus_trialmenu_cf2,1,true)
			audio_sound_set_track_position(playingmusic, musicposition)
			break;
		case 3:
			currentlevel=room_chillfields_boss
			endlevel=room_chillfields_boss
			lvlname="Vs. Electrobot"
			sprname=spr_chillfieldsbossscroll
			playingmusic = audio_play_sound(mus_trialmenu_cf3,1,true)
			audio_sound_set_track_position(playingmusic, musicposition)
			break;
		case 4:
			currentlevel=room_mysticmanor_1
			endlevel=room_mysticmanor_1
			lvlname="Mystic Manor Stage 1"
			sprname=spr_mysticmanor1scroll
			playingmusic = audio_play_sound(mus_trialmenu_mm1,1,true)
			audio_sound_set_track_position(playingmusic, musicposition)
			break;
		case 5:
			currentlevel=room_glowstickcity
			endlevel=room_glowstickcity
			lvlname="Glow Stick City (unfinished)"
			sprname=spr_tutorialscroll
			playingmusic = audio_play_sound(mus_trialmenu_gc,1,true)
			audio_sound_set_track_position(playingmusic, musicposition)
			break;
	}

	ini_open("savedata.ini")
	hiscore=ini_read_real("records",string(endlevel)+string("_score"),0)
	timer=string_replace_all(((string_format(ini_read_real("records",string(endlevel)+string("_minutes"),99), 2, 0)) + ":" + (string_format(ini_read_real("records",string(endlevel)+string("_seconds"),59), 2, 0))), " ", "0")
	ini_close()
}
changedlevel = false

if global.key_jumpp
{
	audio_stop_all()
	audio_play_sound(snd_confirm,1,false)
	loadroom(currentlevel, true)
}
else if global.key_start
{
	audio_stop_all()
	audio_play_sound(snd_nahnvm,1,false)
	loadroom(room_charselect, false)
}