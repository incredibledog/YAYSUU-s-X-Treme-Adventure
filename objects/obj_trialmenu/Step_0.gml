/// @description Insert description here
// You can write your code in this editor
select=clamp(select,0,4)
if xoffset=632
{
	xoffset=0
}
else {
	xoffset+=8
}
if global.key_leftp
{
	select-=1
	audio_play_sound(snd_move,1,false)
}
if global.key_rightp
{
	select+=1
	audio_play_sound(snd_move,1,false)
}
if global.key_jump || global.key_start
{
	audio_stop_all()
	audio_play_sound(snd_confirm,1,false)
	global.nextroom=currentlevel
	global.lives=3
	global.checkpoint=false
	obj_fadeblack.fading=true
}
if global.key_dash
{
	audio_stop_all()
	audio_play_sound(snd_nahnvm,1,false)
	global.nextroom=room_charselect
	obj_fadeblack.fading=true
}
switch select
{
	case 0:
		currentlevel=room_tutorial
		endlevel=room_tutorial
		lvlname="Tutorial Stage"
		sprname=spr_tutorialscroll
	break;
	case 1:
		currentlevel=room_chillfields_1
		endlevel=room_chillfields_1
		lvlname="Chill Fields Stage 1"
		sprname=spr_chillfields1scroll
	break;
	case 2:
		currentlevel=room_chillfields_2
		endlevel=room_chillfields_2d
		lvlname="Chill Fields Stage 2"
		sprname=spr_chillfields2scroll
	break;
	case 3:
		currentlevel=room_chillfields_boss
		endlevel=room_chillfields_boss
		lvlname="Vs. Electrobot"
		sprname=spr_chillfieldsbossscroll
	break;
	case 4:
		currentlevel=room_mysticmanor_1
		endlevel=room_mysticmanor_1
		lvlname="Mystic Manor Stage 1"
		sprname=spr_mysticmanor1scroll
	break;
}
ini_open("savedata.ini")
hiscore=ini_read_real("records",string(endlevel)+string("_score"),0)
timer=string_replace_all(((string_format(ini_read_real("records",string(endlevel)+string("_minutes"),99), 2, 0)) + ":" + (string_format(ini_read_real("records",string(endlevel)+string("_seconds"),59), 2, 0))), " ", "0")
ini_close()