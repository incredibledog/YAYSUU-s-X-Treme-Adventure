/// @description Insert description here
// You can write your code in this editor
// I'M SALVAGING THE OLD SOUND TEST!! WE'RE BACK!! AND BETTER THAN EVER!!!

if global.key_left && !audio_is_playing(currentsound)
{
	dedede++
	if dedede >= global.menurepeat_delay && dedede % global.menurepeat_holddelay == 0
	{
		select--	
	}
} else if global.key_right && !audio_is_playing(currentsound)
{
	dedede++
	if dedede >= global.menurepeat_delay && dedede % global.menurepeat_holddelay == 0
	{
		select++
	}
} else {
	dedede = 0
}

if global.key_leftp && !audio_is_playing(currentsound)
{
	select--
}
if global.key_rightp && !audio_is_playing(currentsound)
{
	select++
}

lastitem = 18
if select > lastitem select = 1 else if select < 1 select = lastitem

if audio_is_playing(currentsound)
	angle--
else
	angle=0
angle=angle % 360
if global.key_jumpp
{
	audio_stop_all()
	audio_play_sound(currentsound,1,loopthis,global.musvol)
}
if global.key_dashp
{
	audio_stop_all()
}
if global.key_runp
{
	loadroom(room_extras,loadtype.menu)
}
switch select
{
	case 0:
		currentsound=mus_title
		sndname="Title Theme - YXA OST"
		loopthis=true
	break;
	case 1:
		currentsound=mus_mainmenu
		sndname="Main Menu - YXA OST"
		loopthis=true
	break;
	case 2:
		currentsound=mus_chrselect
		sndname="Choose your Buddy! - YXA OST"
		loopthis=true
	break;
	case 3:
		currentsound=mus_tutorial
		sndname="Tutorial - YXA OST"
		loopthis=true
	break;
	case 4:
		currentsound=mus_chillfields_1
		sndname="Chill Fields Stage 1 - YXA OST"
		loopthis=true
	break;
	case 5:
		currentsound=mus_chillfields_2
		sndname="Chill Fields Stage 2 - YXA OST"
		loopthis=true
	break;
	case 6:
		currentsound=mus_chillfields_boss
		sndname="Vs. Electrobot - YXA OST"
		loopthis=true
	break;
	case 7:
		currentsound=mus_mysticmanor_1
		sndname="Mystic Manor Stage 1 - YXA OST"
		loopthis=true
	break;
	case 8:
		currentsound=mus_mysticmanor_2
		sndname="Mystic Manor Stage 2 - YXA OST"
		loopthis=true
	break;
	case 9:
		currentsound=mus_chilifields
		sndname="Chili Fields - YXA OST"
		loopthis=true
	break;
	case 10:
		currentsound=mus_glowstickcity
		sndname="Glowstick City (Plus Mix) - UCG OST"
		loopthis=true
	break;
	case 11:
		currentsound=mus_trialmenu
		sndname="Trial Menu - YXA OST"
		loopthis=true
	break;
	case 12:
		currentsound=mus_options
		sndname="Options - YXA OST"
		loopthis=true
	break;
	case 13:
		currentsound=mus_extras
		sndname="Extras - YXA OST"
		loopthis=true
	break;
	case 14:
		currentsound=mus_yaysuuwin
		sndname="Stage Clear! YAYSUU - YXA OST"
		loopthis=false
	break;
	case 15:
		currentsound=mus_teddywin
		sndname="Stage Clear! Teddy - YXA OST"
		loopthis=false
	break;
	case 16:
		currentsound=mus_gameover_y
		sndname="Game Over! YAYSUU - YXA OST"
		loopthis=false
	break;
	case 17:
		currentsound=mus_gameover_t
		sndname="Game Over! Teddy - YXA OST"
		loopthis=false
	break;
	case 18:
		currentsound=mus_cutscene
		sndname="Story Beats - YXA OST"
		loopthis=true
	break;
}